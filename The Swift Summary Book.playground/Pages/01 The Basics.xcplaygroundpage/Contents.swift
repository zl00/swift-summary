/*:
 [Previous](@previous) | [Next](@next)
 ****
 
 Copyright (c) 2016 Juan Antonio Karmy.
 Licensed under MIT License
 
 Official Apple documentation available at [Swift Language Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/)
 
 See Juan Antonio Karmy - [karmy.co](http://karmy.co) | [@jkarmy](http://twitter.com/jkarmy)
 
 ****
 */

/*:
 # THE BASICS
 */

import UIKit

//: Constants and Variables
var str = "Hello, playground-3"
let hello = "Hola, qué tal"



/*: Optionals can be nil or the number they store, if any. */
var optionalInteger: Int?
optionalInteger = 42



/*: Reserved words can be used as variables or constants using `` */
let `private` = "private word"
var word = `private`

/*: Printing strings can be achieved by "sum" or by ```` \() ```` */
print(hello + " " + word)
print("\(hello) \(word)")


/*: Padding numbers with "_" makes them more readable */
var paddedInteger = 1_000_000


/*:
 Explicit conversion must be made when working with explicit types.
 For any other case, use the Int class
 */
let thousand: UInt16 = 1_000
let one: UInt8 = 1
let thousandAndOne = thousand + UInt16(one)


/*:Inferred as Int by default */
let anotherNumber: Int = Int(UINT32_MAX)
let number = 6745
let result = anotherNumber + number


/*: `typealias` is a convenient way to refer to another type in a contextual way. */
typealias AudioResolution = UInt16
AudioResolution.min

/*: Tuples can be of any kind and of any number of elements */
let success = (200, "Success")
typealias Success = (Int, String)
let exito: Success = success

/*:
 If you receive a response in this format, it can be conveniently stored like this.
 */
let (code, message) = success

/*: If you just need one value. */
let (response, _) = success

/*: Values can be accessed like indexes */
success.0
success.1

/*: Or, names can be added upon declaration */
let someTuple = (number: 456, assertion: "Yes")
someTuple.number
someTuple.assertion


/*: Optionals may have a value or not. */
let optional: Int? = 2

if optional != nil {
    "It's not nil!"
    optional!
} else {
    "It's nil"
}

/*: You can use optional binding to test for an unassigned value as well
 */

if let value = optional {
    "It's not nil!"
    value
}else {
    "It's nil"
}

/*:
 ✨✨✨✨You can also use implicitly unwrapped optionals. Value becomes accessible automatically once a value has been set
 1. In essence, It's an optional;
 2. However, U can use it like nonoptional vaue
 */
var im: String! = "hi"
//: This code below will entails an crash
// im = nil
let nonoptional: String = im


assert(true == true, "True isn't equal to false")

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */

