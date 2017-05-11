/*:
 [Previous](@previous) | [Next](@next)
 ****
 
 Copyright (c) 2016 Juan Antonio Karmy.
 Licensed under MIT License
 
 Official Apple documentation available at [Swift Language Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/)
 
 See Juan Antonio Karmy - [karmy.co](http://karmy.co) | [@jkarmy](http://twitter.com/jkarmy)
 
 ****
 */
//: Function Argument Label  &   Parameter Name
// custom arugment label
func simpleFunc1(label argument: String) { }
simpleFunc1(label: "")

// as default, parameter name as label
func simpleFunc2(argument: String) { }
simpleFunc2(argument: "")

// also, u can ignore label
func simpleFunc3(_ argument: String) { }
simpleFunc3("")

//: Default Parameter Value
func simpleFunc4(argument: String = "123") { }
simpleFunc4()
simpleFunc4(argument: "321")

//: A variadic param can take more than one value of a specified type.
func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

//: inout
func swapTwoInts( a: inout Int, b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var a = 1, b = 2
swapTwoInts(a: &a, b: &b)
print(a, b)
