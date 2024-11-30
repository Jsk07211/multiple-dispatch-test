# Function overloading
function mytypeof(x::Int64)
    "Int64"
end

function mytypeof(x::Number)
    "Number"
end

function mytypeof(x::String)
    "String"
end

function mytypeof(x::Any)
    "Not defined yet"
end

# Why does this work? Type of x is not provided for compile time
# function mytypeof(x)
#     "Hello"
# end

function main()
    println(mytypeof(1))
    println(mytypeof(π))
    println(mytypeof("Hello"))
    println(mytypeof([1,2,3]))
end

if abspath(PROGRAM_FILE) == @__FILE__
    main()
end