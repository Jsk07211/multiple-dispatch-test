include("function-overloading.jl")

struct Waffles
    topping::String
end

function mytypeof(x::Waffles)
    return "Waffles"
end

function isDog(x::Waffles)
    return "No"
end

function existing(x)
    return "Vibing..."
end