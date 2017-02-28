//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//创建和构造一个空的set
var letters = Set<Character>()
print("letters is of type Set<Charater> with \(letters.count) items.")

letters.insert("a")
letters = []

//SET类型必须显示的声明类型
var s1: Set<String>  = ["Rock","classes","Hip hop"]

//访问和修改set元素
print("I have \(s1.count) favourate music genres")

if s1.isEmpty{
    print("empty")
}else{
    print("not empty")
}


s1.insert("a2")
if let removedGenre = s1.remove("Rock"){
    print("\(s1)? i am over it")
}else{
    print("i naver cared for that")
}


if s1.contains("a2"){
    print("contain")
}else{
    print("not contain")
}


for item in s1{
    print("\(item)")
}


//按照特定的顺序遍历Set
for ss in s1.sort(){
    print("\(ss)")
}



let addDigst: Set = [1,3,5,7,9]
let evenDIgst:Set = [0,2,4,6,8]
let sigleDigstPrimeNumbers:Set = [2,3,5,7]
addDigst.union(evenDIgst).sort()
addDigst.intersect(evenDIgst).sort()
addDigst.subtract(evenDIgst).sort()
addDigst.exclusiveOr(evenDIgst).sort()

var namesOfIntegers = [Int:String]()
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]





var airports = ["s1":"haha","s2":"hehe"]
let airpiorts = Array(airports.keys)
let airportNames = Array(airports.values)









