struct DOGGO
    name::String
end

# Multiple dispatch lets us add a method for our own custom data type
# Hence, we do not need to rewrite mygenericfunction
function mytypeof(x::DOGGO)
    return "Dog"
end

function isDog(x::DOGGO)
    return "Yes"
end