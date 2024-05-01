import java.util.*;
class RepeatPrimes {
    static final int N = 32;
    static final int R = 5;
    static Set<Integer> eratosthenes() {
        Set<Integer> p = new HashSet<Integer>();
        for (int i = 2; i < N; i++) p.add(i);
        for (int i = 2; i < R; i++)
            if (p.contains(i))
                for (int j = i * i; j < N; j = j + i)
                    p.remove(j);
        return p;
    }
    public static void main(String[] args) {
        for (int i = 0; i < 100000000; i++) eratosthenes();
    }
}
