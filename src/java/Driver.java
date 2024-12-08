public class Driver {
    public static void main(String[] args) {
        // Animal frog = new Animal("Frog");
        Animal cat1 = new Cat("Cat1");
        Cat cat2 = new Cat("Cat2");
        Dog dog = new Dog("Dog");

        cat1.meets(cat2);
        cat2.meets(cat1);

        cat2.meets(cat2);

        System.out.println();

        cat1.meets(dog);
        cat2.meets(dog);
    }
}