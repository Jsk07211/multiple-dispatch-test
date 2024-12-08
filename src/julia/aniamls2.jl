abstract type Animal end

struct Dog <: Animal
    sound::String
end

struct Cat <: Animal
    sound::String
end

struct Frog <: Animal
    sound::String
end

function sound(dog::Dog)
    println(typeof(dog))
    return dog.sound
end

function sound(cat::Cat)
    println(typeof(cat))
    return cat.sound
end

function sound(frog::Frog)
    println(typeof(frog))
    return frog.sound
end

function meets(dog::Dog, other::Cat)
    return "chases"
end

function meets(dog::Dog, other::Frog)
    return "eats"
end

function meets(dog::Dog, other::Animal)
    return "stares"
end


function main()
    d = Dog("bork bork")
    d2 = Dog("bork bork")
    f = Frog("ribbit ribbit")
    c = Cat("meow meow")


    println("waffles the doggo says: ", sound(d))
    println("waffles the doggo meets frog: ", meets(d, f))
    println("waffles the doggo meets cat: ", meets(d, c))
    println("waffles the doggo meets other dog: ", meets(d, d2))
end

main()
