/*:
 [Previous](@previous) | [Next](@next)
 ****
 
 Copyright (c) 2016 Juan Antonio Karmy.
 Licensed under MIT License
 
 Official Apple documentation available at [Swift Language Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/)
 
 See Juan Antonio Karmy - [karmy.co](http://karmy.co) | [@jkarmy](http://twitter.com/jkarmy)
 
 ****
 */

import UIKit


//: Tips: When you assign a default value to a stored property, or set its initial value within an initializer, the value of that property is set directly, without calling any property observers.
class Demo {
    var i: Int = 0 { // not trigger willSet
        willSet {
            print("willSet!")
        }
    }
    
    init() {
        i = 10 // not trigger willSet
    }
}

let d = Demo()
d.i = 10


//: ### Initializer - struct
struct Size {
    var width = 0.0, height = 0.0
}
let s = Size(width: 1, height: 2)



//: ### Designated Initializer  &  Convenience Initializer
class ParentClass {
    
    var parameter: String
    
    init(value: String) {
        self.parameter = value
    }
}

class SubClass: ParentClass {
    
    var subParameter: String
    
    override init(value: String) {
        subParameter = "subParameter-Designated"
        super.init(value: value)
    }
    
    init(value: String, repeatCount: Int) {
        subParameter = "subParameter-Designated2"
        super.init(value: value)
    }
    
    convenience init() {
        self.init(value: "parameter")
        subParameter = "subParameter-Convenience"
    }
}

let sub1 = SubClass()
let sub2 = SubClass(value: "parameter-2")

//: ![Designated and Convenience Image?](Designated&Convenience.png)


