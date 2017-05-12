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

//: # Stored Properties  &  Computed Properties   &   Type Properties

//: ## Stored Properties
//: 1. For class or struct
//: 2. when an instance of value type is constant, so as its properties.
//: Whereas an instance of reference type is constant, still can modify its properties.
//: 3. Lazy, var


//: ## Computed Properties
//: 1. For class, struct, also *enum*
struct FixedLengthRange {
    var storedTypeProperty = 1 // stored
    var computedTypeProperty: Int { // computed
        get {
            return self.storedTypeProperty
        }
        set {
            self.storedTypeProperty = newValue
        }
    }
}

//: ## Type Properties
//: static



//: # Monitor Changes of Properties
//: 1. For normal stored properties, except lazy.

class ViewController {
    
    
    //This property has observers for when the the value will and did set
    var propWithObserver: Int = 0 {
        willSet {
            print(newValue)
        }
        
        didSet {
            print(oldValue)
        }
        //Note that if the didSet sets the value of the property, it doesn't call the setter again
    }
}


