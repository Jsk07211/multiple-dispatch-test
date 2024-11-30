struct Dog
    name::String
end

# Multiple dispatch lets us add a method for our own custom data type
# Hence, we do not need to rewrite mygenericfunction
function mytypeof(x::Dog)
    return "Dog"
end

function isDog(x::Dog)
    return "Yes"
end