public class fib {
    public static void main(String... args) {
        System.out.println(fibb(fibb(7)));
    }
    
    public static int fibb(int n){ 
        return (n > 0) ? ((n == 1) ? 1 : ((n == 2) ? 1 : fibb(n-1) + fibb(n-2))) : -1;
    }
}
