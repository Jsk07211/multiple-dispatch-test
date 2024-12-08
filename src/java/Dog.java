public class Dog implements Animal {
    public String name;

    public Dog(String name) {
        this.name = name;
    }

    @Override
    public void meets(Animal other) {
        System.out.println("BARK");
    }

    public void meets(Cat other) {
        System.out.println("CHASES");
    }
}