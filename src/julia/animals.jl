abstract type Animal end

struct Dog <: Animal
    sound::String
    food::String
end

struct Cat <: Animal
    sound::String
    food::String
end

struct Frog <: Animal
    sound::String
    food::String
end

function sound(dog::Animal)
    println(typeof(dog))
    return dog.sound
end

function sound(cat::Animal)
    println(typeof(cat))
    return cat.sound
end

function sound(frog::Animal)
    println(typeof(frog))
    return frog.sound
end


function main()
    customer1 = Dog("bork bork", "kibble")

    println("waffles the doggo says: ", sound(customer1))
end

main()