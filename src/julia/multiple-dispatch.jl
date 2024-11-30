include("function-overloading.jl")
include("waffles.jl")
include("dog.jl")

## METHODS FOR MYGENERIC FUNCTION ##
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

## HELPER FUNCTIONS ##
function getname(f::Function)
    # CITE: https://discourse.julialang.org/t/get-the-name-of-a-function-in-the-argument/40027
    return String(Symbol(f))
end

function displayMethods(f)
    println("Method Name: ", f)
    println(methods(f), "\n")
end

## TESTER METHODS ##
function testCustomGeneric(waffle, waffles)
    println()
    # Julia managed to figure out which method of mytypeof function to call 
    # based on data type of argument in my generic function
    mygenericfunction(waffle)
    mygenericfunction(waffles)
end

function testIsDog(waffle, waffles)
    println()

    println(isDog(waffle))
    println(isDog(waffles))
end

function testExistence(waffle, waffles)
    println()

    println(existing(waffle))
    println(existing(waffles))
end

function testSingle()
    println()

    mygenericfunction(1)
    mygenericfunction(π)
    mygenericfunction("Hello")
    mygenericfunction([1,2,3])
end

function testPairs()
    println()

    mygenericfunction(1, π)
    mygenericfunction(1, "Hello")
    mygenericfunction("Hello", 1)
end


function main()
    waffle = Waffles("blueberries")
    waffles = Dog("Waffles")

    testCustomGeneric(waffle, waffles)
    testIsDog(waffle, waffles)
    testExistence(waffle, waffles)
    testSingle()
    testPairs()

    displayMethods(mygenericfunction)
    displayMethods(mytypeof)
    displayMethods(isDog)
    displayMethods(existing)

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
    # mygenericfunction(1, 2, 3)
end

if abspath(PROGRAM_FILE) == @__FILE__
    main()
end