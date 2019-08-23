
- [Swap in Place Numbers](#swap-in-place-numbers)

# Swap in Place Numbers

```

class SwapInPlace {
    public static void main(String[] args) {
        System.out.println("x");
        int a = 5, b = 8;

        System.out.println(" BEFORE - >  A: " + a + "  ,    B : " + b);
        a = a + b;
        b = a - b;
        a = a - b;

        System.out.println(" AFTER  - >  A: " + a + "  ,    B : " + b);

        // Multiplication and division can also be used for swapping.
        a = 5;
        b = 8;

        System.out.println("\n Multiplication and division can also be used for swapping \n");
        System.out.println(" BEFORE - >  A: " + a + "  ,    B : " + b);
        a = a * b;
        b = a / b;
        a = a / b;

        System.out.println(" AFTER  - >  A: " + a + "  ,    B : " + b);

    }
}
```