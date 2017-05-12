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

/*:
 ## Classes and structures in Swift have many things in common. Both can:
 
 • Define properties to store values
 • Define methods to provide functionality
 • Define subscripts to provide access to their values using subscript syntax
 • Define initializers to set up their initial state
 • Be extended to expand their functionality beyond a default implementation
 • Conform to protocols to provide standard functionality of a certain kind
 
 ## Classes have additional capabilities that structures do not:
 
 • Inheritance enables one class to inherit the characteristics of another.
 • Type casting enables you to check and interpret the type of a class instance at runtime.
 • Deinitializers enable an instance of a class to free up any resources it has assigned.
 • Reference counting allows more than one reference to a class instance.
 
 NOTE
 
 Structures are always copied when they are passed around in your code, and do not use reference counting.
 The same applies to Enums
 
 
 
 
 ## Choosing Between Classes and Structures
 
 • The structure’s primary purpose is to encapsulate a few relatively simple data values.
 • It is reasonable to expect that the encapsulated values will be copied rather than referenced when you assign or pass around an instance of that structure.
 • Any properties stored by the structure are themselves value types, which would also be expected to be copied rather than referenced.
 • The structure does not need to inherit properties or behavior from another existing type.
 
 
 ## Assignment and Copy Behavior for Strings, Arrays, and Dictionaries
 
 Swift’s String, Array, and Dictionary types are implemented as structures. This means that strings, arrays, and dictionaries are copied when they are assigned to a new constant or variable, or when they are passed to a function or method.
 
 This behavior is different from NSString, NSArray, and NSDictionary in Foundation, which are implemented as classes, not structures. NSString, NSArray, and NSDictionary instances are always assigned and passed around as a reference to an existing instance, rather than as a copy.
 */
//: Structs are Value Types   &    Classes are Reference Types
struct Resolution {
    var width = 0
    var height = 0
}

var r1 = Resolution(width: 1, height: 1)
var r2 = r1
r1.width = 10
print(r1)
print(r2)

class ViewController: UIViewController {
    
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
var vc1 = ViewController()
vc1.name = "hello1"
var vc2 = vc1
vc1.name = "hello-111"
print(vc2.name)

//: Classes support ```===```   ```!==``` to judge whether 2 instances are same.
var vc3 = ViewController()
if vc1 === vc2 {
    print("vc1 & vc2 are same instance!")
}

if vc1 !== vc3 {
    print("vc1 & vc3 are different!")
}


