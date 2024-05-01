(module
 (import "P0lib" "write" (func $write (param i32)))
 (import "P0lib" "writeln" (func $writeln))
 (import "P0lib" "read" (func $read (result i32)))
 (func $fib (param $n i32) (result i32)
    local.get $n
    i32.const 1
    i32.le_s
    if (result i32)
      local.get $n
    else
      local.get $n
      i32.const 1
      i32.sub
      call $fib
  
      local.get $n
      i32.const 2
      i32.sub
      call $fib
  
      i32.add
    end
 )
 (func $fibonacci
    call $read
    call $fib
    call $write
 )
 (memory 1)
 (start $fibonacci)
)
