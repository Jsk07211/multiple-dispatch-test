abstract type Animal end

struct Taxonomy
    kingdom::String
    phylum::String
    class::String
    order::String
    family::String
    genus::String
    species::String
end

struct Dog <: Animal
    taxonomy::Taxonomy
    name::String
    breed::String
end

struct Cat <: Animal
    taxonomy::Taxonomy
    name::String
    color::String
end

struct Bird <: Animal
    taxonomy::Taxonomy
    name::String
    wingspan::Float64
end

struct Bat <: Animal
    taxonomy::Taxonomy
    name::String
    wingspan::Float64
end

function get_attributes(animal::Dog)
    tax = animal.taxonomy
    return """
    Animal: Dog
    Name: $(animal.name)
    Breed: $(animal.breed)
    Taxonomy:
        Kingdom: $(tax.kingdom)
        Phylum: $(tax.phylum)
        Class: $(tax.class)
        Order: $(tax.order)
        Family: $(tax.family)
        Genus: $(tax.genus)
        Species: $(tax.species)
    """
end

function get_attributes(animal::Cat)
    tax = animal.taxonomy
    return """
    Animal: Cat
    Name: $(animal.name)
    Color: $(animal.color)
    Taxonomy:
        Kingdom: $(tax.kingdom)
        Phylum: $(tax.phylum)
        Class: $(tax.class)
        Order: $(tax.order)
        Family: $(tax.family)
        Genus: $(tax.genus)
        Species: $(tax.species)
    """
end

function get_attributes(animal::Bird)
    tax = animal.taxonomy
    return """
    Animal: Bird
    Name: $(animal.name)
    Wingspan: $(animal.wingspan) cm
    Taxonomy:
        Kingdom: $(tax.kingdom)
        Phylum: $(tax.phylum)
        Class: $(tax.class)
        Order: $(tax.order)
        Family: $(tax.family)
        Genus: $(tax.genus)
        Species: $(tax.species)
    """
end

function main()
    dog_taxonomy = Taxonomy(
        "Animalia", "Chordata", "Mammalia", "Carnivora", "Canidae", "Canis", "Canis lupus familiaris"
    )
    cat_taxonomy = Taxonomy(
        "Animalia", "Chordata", "Mammalia", "Carnivora", "Felidae", "Felis", "Felis catus"
    )
    bird_taxonomy = Taxonomy(
        "Animalia", "Chordata", "Aves", "Passeriformes", "Fringillidae", "Carduelis", "Carduelis carduelis"
    )
    bat_taxonomy = Taxonomy("Animalia","Chordata", "Mammalia", "Chiroptera", "Vespertilionidae", "Myotis", "Myotis lucifugus" 
    )


    dog = Dog(dog_taxonomy, "Buddy", "Golden Retriever")
    cat = Cat(cat_taxonomy, "Whiskers", "Gray")
    bird = Bird(bird_taxonomy, "Tweety", 25.0)
    
    ```
    
    bat = Bat(bat_taxonomy, "Berry", 10.0 )

    
    ERROR: LoadError: MethodError: no method matching get_attributes(::Bat)
        The function `get_attributes` exists, but no method is defined for this combination of argument types.

    Closest candidates are:
    get_attributes(::Bird)
    @ Main C:\Users\rsanj\CS345\julia\multiple-dispatch-test\src\julia\taxonomy.jl:71
    
    ```

    println(get_attributes(dog))
    println(get_attributes(cat))
    println(get_attributes(bird))
    println(get_attributes(bat))

end

main()
