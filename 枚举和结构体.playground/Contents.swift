//: Playground - noun: a place where people can play

import UIKit

//使用enum来创建一个枚举
enum Rank: Int {
    case  Ace = 1
    case  Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case  Jack, Queen, King
    func simpileDesciption() -> String {
        switch self {
        case .Ace:
            return "ace"
        case  .Jack:
            return "jack"
        case   .Queen:
            return "queue"
        case .King:
            return "king"
        case .Four:
            return "helloworld"
        default:
            return String(self.rawValue)
        }
    }
}





let ace = Rank.Ace
//使用rawValue来访问一个枚举成员的原始值
let aceRawValue = ace.rawValue
let two = Rank.Two
let two2 = two.rawValue
let four = Rank.Four
let four2 = four.rawValue


if let convertedRank = Rank(rawValue : 3){
    let threeDescription = convertedRank.simpileDesciption()
}

enum Suit {
    case Spades,Hearts,Diamods,Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "Spades"
        case .Hearts:
            return "Herats"
        case .Diamods:
            return "Diamods"
        case .Clubs:
            return "Clubs"
        }
    }
}
let heart = Suit.Hearts



//结构体是传值，类是传引用
struct Card {
    var rank :Rank
    var suit :Suit
    func simpleDescription() -> String {
        return "the\(rank.simpileDesciption()) of \(suit.simpleDescription())"
    }
}
let threreOfSpades = Card(rank: .Three,suit: .Spades)
let threeOfSpadesDescriptions = threreOfSpades.simpleDescription()



//一个枚举成员的实例可以有实例值，相同枚举成员的实例可以有不同的值
enum ServerResponse {
    case Result(String,String)
    case Error(String)
}
let success = ServerResponse.Result("6:00 am", "7:00 pm")
let failure = ServerResponse.Error("out of cheese")

switch success {
case let .Result(sunrise,sunset):
     let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)"
case let .Error(error):
     let serverResponse = "Failure...\(error)"
}











