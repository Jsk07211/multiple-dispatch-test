public interface Animal {
    public void meets(Animal other);

    // Must add these methods into the interface, otherwise it cannot be accessed by the children
    // public void meets(Cat other);
    // public void meets(Dog other);
}