// Playground - noun: a place where people can play

import Foundation
var randomNumber : Int = Int(arc4random())%50
var randomNumberNoLimit : Int  = Int(arc4random())
var ran = arc4random_uniform(150)

let string = "42"
if let number = string.toInt(){
    println("Got the number: \(number)")
}else {
    println("Couldn't convert to a number")
}
//prints "Got the number : 42"


protocol Speaker {
    func Speaker()
}
class Vicki: Speaker {
    func Speaker() {
        println("Hello, I am Vicki!")
    }
}

class Ray: Speaker {
     func Speaker() {
        println("YO, I am Ray!")
    }
}












