public class SimpleAdder {
    public int add(int a, int b) {
        return a + b;
    }
    public static void main(String[] args) {
        SimpleAdder adder = new SimpleAdder();
        System.out.println("Test: " + (adder.add(3, 4) == 7));
    }
}