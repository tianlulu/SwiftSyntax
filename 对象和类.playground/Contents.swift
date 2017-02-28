//: Playground - noun: a place where people can play

import UIKit


//使用class和类名来创建一个类，他们的上下文是类
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}


//创建一个类的实例 init方法创建构造器
 var shape = Shape()
 shape.numberOfSides = 7
 var shapeDescription = shape.simpleDescription()

 class NamedShape {
    var numberOfSides : Int = 0
    var  name :String
    
    init(name:String){
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

//子类重写父类的方法，必须用override标记
class Square:NamedShape{
    var sideLength : Double
    
    init(sideLength:Double,name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 8
    }
    
    func area() -> Double {
       return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "\(name) square with sides of length \(sideLength)"
    }
}
let test = Square(sideLength: 5.0,name: "lulu")
test.area()
test.simpleDescription()


//getter和setter
class EquilateralTriangle:NamedShape {
    var sideLength: Double = 0.0
    init(sideLength:Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 33
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        
        set {
            sideLength = newValue / 3.0
        }
    }
    
    
    override func simpleDescription() -> String {
        return "An equilateral teriagle with sides of lengrth \(sideLength)"
        
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1,name: "a triangle")
print(triangle.perimeter)  //获得值
triangle.perimeter = 3.3
print(triangle.sideLength)
print(triangle.perimeter)



//不需要计算属性，但是任然需要运行代码。，使用willset和didset
class TriangleAndSquqre {
    var triangle : EquilateralTriangle{
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square : Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    
    init(size:Double,name:String){
        square = Square(sideLength: size,name: name)
        triangle = EquilateralTriangle(sideLength:size ,name:name)
    }
    
}
var triangleAndSquare = TriangleAndSquqre (size: 10, name: "Tian lulu")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square (sideLength: 50,name: "haha")
print(triangleAndSquare.triangle.sideLength)



//处理变量的可选值时，可以在操作(方法属性和子脚本)之前加?
let optionalSquare : Square? = Square(sideLength:2.5 ,name:"optioal square")
let sideLength = optionalSquare?.sideLength
print(triangleAndSquare.square.sideLength)


















        
