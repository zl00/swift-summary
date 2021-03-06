//: [Previous](@previous)

import Foundation

//: ### ```#keyPath(property name)```
//: 1. key-path
//: 2. `@objc`
@objc class SomeClass: NSObject {
    
    var someProperty: Int = 1
}

let c = SomeClass()
print(#keyPath(SomeClass.someProperty))


//: ### About Memory

print("UInt(MemoryLayout<Int32>.size)  =  \(UInt(MemoryLayout<Int32>.size))")
//: [Next](@next)
