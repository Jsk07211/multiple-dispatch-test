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

println(mytypeof(1))
println(mytypeof(π))
println(mytypeof("Hello"))