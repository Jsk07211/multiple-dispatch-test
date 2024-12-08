public class Cat implements Animal {
    public String name;

    public Cat(String name) {
        this.name = name;
    }

    @Override
    public void meets(Animal other) {
        System.out.println("MEOW");
    }

    public void meets(Cat other) {
        System.out.println("PURRRRRRRRR");
    }

    public void meets(Dog other) {
        System.out.println("HISSES");
    }
}