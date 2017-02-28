//: Playground - noun: a place where people can play

import UIKit
//将多个不同的值组合成一个数据
var str = "Hello, playground"

let registrationReault = (isResidter:true ,nickName:"慕课",gender:"女")
registrationReault.gender
registrationReault.0


let loginReault:(Bool,String)



//可选型
//optional 可选值 或者是一个值，或者是没有值


var a : Int

var imOptional:Int?
imOptional = 9


let userInput = "19"
var age = Int(userInput) //age是可选值
age



if age != nil {
    //此时age是一定有值得,强制类型转换不能针对可选值
    print("your age is" + String(age!))
    age
    age!
    
}else{
    print("your age is invalidate")
}



//nil 聚合运算符
var userName: String?
userName = "lulu"
//userName != nil {
//    print("hello,\(userName!)")
//} else {
//    print("hello")
//}

//let outPutName:String = userName != nil ? userName! : "Guest"
let outPutName:String = userName ?? "Guest"
print("hello,\(outPutName)")


//区间运算符
//【a,b】 a...b
//【a,b)  a..<b
//swift for in  循环
for index in 1..<10{
    index
   // index = 3
}

let courseNames = ["11","22","33"]
for i in 0..<courseNames.count{
    courseNames[i]
}




let possibleNumber = "111"
let convertedNumber = Int(possibleNumber)


if let actualNumber = Int(possibleNumber){
     print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
}else{
     print("\'\(possibleNumber)\' could not be converted to an integer")
}



let age1 = 3
assert(age1 > 0 ,"efewf655yewfw")


let str2 = "Dog"
for ss in str2.characters {
    print(ss)
}


let catCharacters:[Character] = ["c","u","m","a","n"]
var catString = String(catCharacters)
print(catString)



let exclamationMask:Character = "!"
catString.append(exclamationMask)

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

let gretting = "Butrn Tag"
gretting[gretting.endIndex.predecessor()]
gretting[gretting.startIndex.successor()]
//gretting[gretting.startIndex]

let index = gretting.startIndex.advancedBy(7)
gretting[index]


for index2 in gretting.characters.indices{
    print("\(gretting[index2])")
}



var welcome = "welcome"
welcome.insert("!", atIndex: welcome.endIndex)

welcome.insertContentsOf(" there".characters, at: welcome.endIndex.predecessor())

welcome.removeAtIndex(welcome.endIndex.predecessor())
print(welcome)


let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation{
    print("dewfeferger")
}


let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var actlSceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Act 1"){
        actlSceneCount += 1
    }
}
print("There are \(actlSceneCount) scenes in Act 1")


var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet{
    if scene.hasSuffix("Capulet's mansion"){
        mansionCount += 1
    }else if scene.hasSuffix("Friar Lawrence's cell"){
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes;\(cellCount) cell scenes")



