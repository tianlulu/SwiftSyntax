//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class Counter{
var counte = 0
    
    func increment()  {
        ++counte
    }
    
    func incrementby(amout:Int)  {
        counte += amout
    }
    
    func reset()  {
        counte = 0
    }
}

let counter = Counter()
counter.increment()
counter.incrementby(6)
counter.reset()




