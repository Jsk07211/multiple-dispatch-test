include("function-overloading.jl")

function mygenericfunction(x)
    println("$x::", mytypeof(x))
end

function mygenericfunction(x, y)
    println("$x::", mytypeof(x), ", $y::", mytypeof(y))
end

function mygenericfunction(x::Int64, y)
    println("$x IS ", mytypeof(x), ", $y IS ", mytypeof(y))
end

function mygenericfunction(x::String, y)
    println("$x ISH ", mytypeof(x), ", $y ISH ", mytypeof(y))
end

function mygenericfunction(x::Int64, y::String, z::String)
    println("$x IS ", mytypeof(x), ", $y IS ", mytypeof(y))
end

function mygenericfunction(x::String, y::Int64, z::Int64)
    println("$x ISH ", mytypeof(x), ", $y ISH ", mytypeof(y))
end

# function mygenericfunction(x, y, z)
#     println("$x ART ", mytypeof(x), ", $y ART ", mytypeof(y))
# end


function main()
    mygenericfunction(1)
    mygenericfunction(π)
    mygenericfunction("Hello")
    mygenericfunction([1,2,3])

    println()

    mygenericfunction(1, π)
    mygenericfunction(1, "Hello")
    mygenericfunction("Hello", 1)

    println()

# ERROR: LoadError: MethodError: no method matching mygenericfunction(::Int64, ::Int64, ::Int64)
# The function `mygenericfunction` exists, but no method is defined for this combination of argument types.

# Closest candidates are:
#   mygenericfunction(::String, ::Int64, ::Int64)
#    @ Main ~/Desktop/345/multiple-dispatch-test/src/julia/multiple-dispatch.jl:23
#   mygenericfunction(::Int64, ::Any)
#    @ Main ~/Desktop/345/multiple-dispatch-test/src/julia/multiple-dispatch.jl:11
#   mygenericfunction(::Any, ::Any)
#    @ Main ~/Desktop/345/multiple-dispatch-test/src/julia/multiple-dispatch.jl:7
#   ...
    mygenericfunction(1, 2, 3)
end

if abspath(PROGRAM_FILE) == @__FILE__
    main()
end