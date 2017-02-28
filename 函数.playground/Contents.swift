//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
func sayHelloha(personName:String) -> String {
   let greeting = "Hello," + personName + "！"
    return greeting
}
print(sayHelloha("lulu"))



func halfOpenRangeLength(start:Int,end:Int) ->  Int{
    return end - start
}
print(halfOpenRangeLength(1, end: 10))



func sayHello(personName:String,alreadayGreeted:Bool) -> String {
    if alreadayGreeted {
        return sayHelloha(personName)
    }else{
        return sayHelloha(personName)
    }
}

print(sayHello("Tim",alreadayGreeted: true))



func sayGoodbye(personName:String)  {
    print("Goodbye,\(personName)")
}
sayGoodbye("Dave")


func printAndCount(stringToPoint: String) -> Int {
    print(stringToPoint)
    return stringToPoint.characters.count
}

func printWithoutCount(stringToPoint:String) {
    printAndCount(stringToPoint)
}
printAndCount("hello world")
printWithoutCount("hello kity")


func minMax(array:[Int]) -> (min :Int,max:Int){
  var currentMin = array[0]
  var currentMax = array[0]
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax {
            currentMax = value
        }
    }
    return(currentMin,currentMax)
}


func MinMax(array:[Int]) -> (min:Int,max:Int) {
    // if array.isEmpty {return nil}
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count]{
        if value < currentMin {
            currentMin = value
        }else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin,currentMax)
}


func someFunction(firstParameterName:Int, secondParameterName:Int) {
 
}
someFunction(1, secondParameterName: 2)


func sayHello(to person:String,and anotherString:String) -> String {
    return "Hello\(person) and \(anotherString)"
}
print(sayHello(to: "Bill", and: "Ted"))







