struct Circle
    radius::Float64
end

struct Rectangle
    length::Float64
    width::Float64
end

struct Triangle
    a::Float64
    b::Float64
    c::Float64
end

function area(shape::Circle)
    return π * shape.radius^2
end

function area(shape::Rectangle)
    return shape.length * shape.width
end

function area(shape::Triangle)
    s = (shape.a + shape.b + shape.c) / 2
    return sqrt(s * (s - shape.a) * (s - shape.b) * (s - shape.c))
end

function perimeter(shape::Circle)
    return 2 * π * shape.radius
end

function perimeter(shape::Rectangle)
    return 2 * (shape.length + shape.width)
end

function perimeter(shape::Triangle)
    return shape.a + shape.b + shape.c
end

function main()
    my_circle = Circle(5.0)
    my_rectangle = Rectangle(4.0, 6.0)
    my_triangle = Triangle(3.0, 4.0, 5.0)

    println("circle area: ", area(my_circle), ", perimeter: ", perimeter(my_circlec))
    println("rectangle area: ", area(my_rectangle), ", perimeter: ", perimeter(my_rectangle))
    println("triangle area: ", area(my_triangle), ", perimeter: ", perimeter(my_triangle))
end

main()
