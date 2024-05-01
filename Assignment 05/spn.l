%option noyywrap
%{
#include <stdio.h>
#include <stdbool.h>
#include <string.h>

#define MAX_COMPONENT_LENGTH 14
#define MAX_PATHNAME_LENGTH 255

int error_flag = 0;

typedef struct Node {
    char* data;
    struct Node* next;
} Node;

Node* stack = NULL;

int total_char_count = 0;
bool last_was_slash = false;

void print_error(const char *msg) {
    fprintf(stderr, "%s", msg);
    error_flag = 1;
}

Node* create_node(const char* data){
    Node* new_node = (Node*)malloc(sizeof(Node));
    new_node->data = (char*)malloc(strlen(data) + 1);
    strcpy(new_node->data, data);
    new_node->next = NULL;
    return new_node;
}

void push(const char* data){
    Node* new_node = create_node(data);
    if(stack == NULL){
        stack = new_node;
        return;
    }
    new_node->next = stack;
    stack = new_node;
}

void pop(){
    if(stack == NULL){
        print_error("malformed pathname");
        return;
    }
    Node* tmp = stack;
    stack = stack->next;
    free(tmp);
}

void clear_stack(){
    free(stack);
    stack = NULL;
}

void print_node(Node* node){
    if(node == NULL){
        return;
    }
    print_node(node->next);
    printf("%s", node->data);
}

void print_sanitized_pathname(){
    print_node(stack);
    printf("\n");
}

char* concat_to_front(const char c, char* str) {
    size_t len = strlen(str);
    char* result = (char*)malloc(len + 2);
    strcpy(result + 1, str);
    result[0] = c;
    result[len + 1] = '\0';
    return result;
}

%}

%%

[\t ]+            ; // Ignore leading and trailing spaces

\.\/*             ; // Ignore 
    
\/                { // Forward slash found
                    if(error_flag){
                        continue;
                    }
                    total_char_count++;
                    last_was_slash = true;
                  }

[a-zA-Z0-9\.]+    { // Component found
                    if(error_flag){
                        continue;
                    }
    
                    int len = strlen(yytext);
                    total_char_count += len;

                    if(strcmp(yytext, "..") == 0){
                        pop();
                        continue;
                    }
                    if(len > MAX_COMPONENT_LENGTH){
                        print_error("component too long");
                    }
                    if(total_char_count > MAX_PATHNAME_LENGTH){
                        print_error("pathname too long");
                    }
                    yytext = last_was_slash ? concat_to_front('/', yytext) : yytext;
                    push(yytext);
                    last_was_slash = false;
                  }

\n                {
                    if(!error_flag){
                        print_sanitized_pathname();
                    }
                    clear_stack();
                    total_char_count = 0;
                    error_flag = 0;
                    last_was_slash = false;
                  }

.                 { // Invalid character
                    if(error_flag){
                        continue;
                    }
                    print_error("invalid character");
                  }

%%

int main() {
    yylex();
    printf("\n");
    return 0;
}
