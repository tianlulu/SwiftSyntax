//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//循环，大括号不能省略，包裹条件和循环变量括号可以省略
 let  individualScores = [33,44,55,66,77,88,99]
 var  teamScore = 0
 for  score in individualScores {
    if score > 50 {
        teamScore += 3
    }else{
        teamScore -= 1
    }
 }
 print(teamScore)



//可选值 if let在一起来处理值缺失的情况
var optionalString : String? = "herllo"
print(optionalString == nil)

var optionalName: String? = "lulu"
print(optionalName == nil)
var gretting = "zhuzhu"
if let name = optionalName{
    gretting = "hrllo,\(name)"
}else {
    gretting = "hrllo"
}



//switch case语句
let    vegetable = "red peper"
switch vegetable {
    case "red":
          let vegetableComment = "Add some raisinsdbjewbfwbfweb1"
    case "red","peper":
           let vegetableComment = "hahahha"
    case   let x where x.hasPrefix("peper"):
           let vegetableComment = "Is it a spicy \(x)"
    default:
           let vegetableComment = "Everything tastes goods in soup"
}


//使用for in来遍历字典
let interestingNumbers = [
    "Prime":[2,3,5,7,11,13],
    "Fibonacci":[1,1,2,3,5,8],
    "Square":[1,4,9,16,25],
]
var largest = 0
for(kind,numbers) in interestingNumbers {
    for number in numbers {
        if number > largest{
            largest = number;
        }
    }
}
print(largest);


//使用while来重复运行一段代码直到不满足条件
var n = 2
while n < 100 {
    n = n * 2
}
print(n);


var m = 2
repeat{
    m = m * 2
}while m < 100
print(m)


//使用....<来表示范围
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)


var secondForLoop = 0
for var i = 0; i < 4; ++i {
    secondForLoop += i;
}
print(secondForLoop);


//函数和闭包
//使用 func声明一个函数  使用名字和参数来调用一个函数  使用 ->来指定函数的返回值跟类型
func geret(name : String, eat:String) -> String {
    return "Hello \(name),today is \(eat)"
}
geret("aiya", eat: "humber")



//使用元组来让一个函数返回多个值，该元组的元素可以用名称或者数字来表示
func  caculateStatistics(scores:[Int]) -> (min:Int ,max:Int, sum:Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
let statistics = caculateStatistics([3,2,21,1,2,3,11,3])
print(statistics.max)
print(statistics.min)
print(statistics.sum)



func sumOf(nummbers:Int...) -> Int {
    var sum = 0
    for number in nummbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42,222,22)


//函数可以嵌套，被嵌套的函数可以访问外侧函数的变量
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()


//函数可以作为另一个函数的返回值
func makeIncrementer() -> (Int -> Int){
    func addOne(number:Int) -> Int {
        return 1 + number
    }
    return addOne
}
var  increment = makeIncrementer()
increment(8)


//函数作为另一个函数的参数
func hasAnyMatches(list:[Int],condition:Int -> Bool) ->Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThenTen(number:Int) -> Bool {
    return number < 10
}
var numbers = [11,22,33,10,10,4]
hasAnyMatches(numbers, condition: lessThenTen)



numbers.map({
    (number:Int) -> Int in
    let result =  3 * number
    return result
})


let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)




























