//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//使用protocal来声明一个协议
protocol ExampleProtocol {
    var simpleDescription : String {get}
    mutating func adjust()
}

//类。枚举和结构体都可以实现协议
class SimpleClass : ExampleProtocol {
    var simpleDescription: String = "A very simle class"
    var anotherProperty :Int = 8988
    func adjust() {
        simpleDescription += "helloworld"
    }
}
var a  = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription


struct SimpleStructure:ExampleProtocol {
    var simpleDescription: String = "hello"
    //mutating 标明一个结构体的方法
    mutating func adjust() {
        simpleDescription += "(adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let  bDescription = b.simpleDescription


/**
 使用扩展来为现有的类添加功能，比如方法跟参数
 */
extension Int : ExampleProtocol {
var  simpleDescription : String{
     return "the number \(self)"
}

    mutating func adjust() {
        self += 42
    }
}
print(7.simpleDescription)



//泛型
func repeatItem<Item>(item:Item,numberOfTimes:Int) -> [Item]{
   var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
repeatItem("nkpocl", numberOfTimes: 4)



//你也可以创建泛型函数,方法，类，枚举和结构体
enum OptionalValue<T> {
    case None
    case Some(T)
}
var possibleInteger:OptionalValue<Int> = .None
possibleInteger = .Some(100)


//类型名后面使用where来指定对类型的需求
func anyCommonElements <T ,U where T: SquareType,U: SquareType, T.Generator.Element:Eq>{
    for IhsItem  in rhs {
        if IhsItem  ==  rhsItem {
            return true
        }
    }
}
return false











