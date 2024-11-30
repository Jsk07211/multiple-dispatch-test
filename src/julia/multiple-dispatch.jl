include("function-overloading.jl")

function mygenericfunction(x)
    println("$x::", mytypeof(x))
end

function mygenericfunction(x, y)
    println("$x::", mytypeof(x), ", $y::", mytypeof(y))
end

function main()
    mygenericfunction(1)
    mygenericfunction(π)
    mygenericfunction("Hello")
    mygenericfunction([1,2,3])
    println()
    mygenericfunction(1, π)
end

if abspath(PROGRAM_FILE) == @__FILE__
    main()
end