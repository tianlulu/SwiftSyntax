//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//参数一：数组
var names  = ["Swift","Arial","Soga","Donary"]

//参数二：使用函数(闭包)
func backwords(firstString:String,secondString:String) ->Bool {
    return firstString > secondString
}

var reversed = sort(names,backwords(<#T##firstString: String##String#>, secondString: <#T##String#>))

reversed = sort(names,{ (firstString:String,secondString:String) -> Bool in return firstString > secondString})

reversed = sort (names,{firstString,secondString in return firstString > secondString})


reversed  = sort(names,{firstString,secondString in firstString > secondString})


reversed = sort(names,{$0 > $1})

reversed = sort(names, >)

