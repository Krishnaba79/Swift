// Que : Create  a struct called Rectangle with properties width and height . Add a computed property to calculate its area.

struct Rectangle {
    var width : Double
    var height : Double

    var area:Double{
        return width * height
    }
}

// Esample usage:
let react = Rectangle(width:10,height:5)
print("Area of rectangle : \(react.area)")  //outout : Area of rectangle : 50.0

