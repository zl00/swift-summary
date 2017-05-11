/*:
 [Previous](@previous) | [Next](@next)
 ****
 
 Copyright (c) 2016 Juan Antonio Karmy.
 Licensed under MIT License
 
 Official Apple documentation available at [Swift Language Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/)
 
 See Juan Antonio Karmy - [karmy.co](http://karmy.co) | [@jkarmy](http://twitter.com/jkarmy)
 
 ****
 */


//: # For-In Loop
for index in 1...5 { // range
    print("Index is \(index)")
}

for _ in 1..<6 {
    print("No value")
}

//:# Repeat-While
var i = 0
repeat {
    i += 1
} while (i < 5)

//: # Switch-Case

//: No need for break, and every case must have some code.
let someChar = "e"
switch someChar {
case "a", "e", "i", "o", "u":
    print("\(someChar) is a vowel")
default:
    print("\(someChar) is a consonant")
}

//:There can also be range matching
let count = 3_000_000_000_000
switch count {
case 0...9:
    print("a few")
case 10...10_000:
    print("many")
default:
    print("a lot of")
}

//:Use tuples
let coord = (1,1)
switch coord {
case (0, 0):
    print("Origin")
case (_, 0):
    print("x axis")
case (0, _):
    print("y axis")
case (-2...2, -3...3):
    print("within boundries")
default:
    print("out of bounds")
}

//:Value binding: Assign temp values to variables inside the cases.
let anotherPoint = (0, 0)
switch anotherPoint {
case (let x, 0):
    print("on the y-axis with an x value of \(x)")
case (0, let y):
    print("on the x-axis with a y value of \(y)")
case let (z, w): //This acts as the default case. Since it is only assigning a tuple, any value matches.
    print("somewhere else at (\(z), \(w))")
}

//: Bind both values, plus test a condition.
switch anotherPoint {
case let (x, y) where x == y:
    print("x = y : \(x) = \(y)")
default:
    break
}

//: ✨✨✨The ```fallthrough``` line forces the switch statement to fall into the default case after a previous case.
switch anotherPoint {
case let (x, y) where x == y:
    print("x = y")
    fallthrough
default:
    print(" are equal")
}
