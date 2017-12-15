//: [Previous](@previous)

//: Playground - noun: a place where people can play

import UIKit


//
var xx: String
xx = "test-base"
print(xx)

print(xx)

/*: ?? unwrap*/
let nickName: String? = "SHA1"
let fullName: String  = "John"
let informalGreeting = "Hi \(nickName ?? fullName)"

// switch-case
// pattern 1: case let x where x.
// pattern 2: case "1", "2":
let vegetable: String = "red pepper"
switch vegetable {
case "celery":
    print("Option 1")
case "cucumber", "watercress":
    print("Option 2")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Default!")
}

// for-in to iterate dictionary
let interestingNumbers = ["Prime": [2, 3, 5, 7]]
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        print(number)
    }
}

// repeat-while pattern
var m = 2
repeat {
    m *= 2
} while m < 100
print(m)


// ... and ..<
print("... start")
for i in 0..<3 {
    print(i)
}
print("... end")

print("..< start")
for i in 0...3 {
    print(i)
}
print("... end")

// function - [label]
// 1. label for caller. By default, label is the argument
// 2. custom label, ignore label
func greet(who persion: String, _ day: String) -> String {
    return "Hello \(persion), today is \(day)"
}
greet(who: "Li Lei", "Sunday")


// function - [return tuple]
func returnTuple() -> (min: Int8, max: Int8) {
    return (Int8.min, Int8.max)
}
let results = returnTuple()
print(results.min, results.max)

// function - [variable number of arguments]
// store these arguments into an array
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for i in numbers {
        sum += i
    }
    return sum
}
let sum = sumOf(numbers: 1, 5, 7)

// class
// - init
// - override
// - get, set, willSet, didSet, implicit varible value like [newValue]

// Base class
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape of \(numberOfSides) sides"
    }
}

// Subclass
class EquilateralTriangle: NamedShape {
    var sideLength = 0.0 {
        // willSet, didSet
        willSet {
            print("Will Set")
        }
        
        didSet {
            print("Did Set")
        }
    }
    
    // init
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        self.numberOfSides = 3
    }
    
    // get, set
    var perimeter: Double {
        get {
            return 3 * sideLength
        }
        
        // implicit [newValue]
        set {
            sideLength = newValue / 3.0
        }
    }
    
    // override
    override func simpleDescription() -> String {
        return "An Equilateral Triangle, Side length is \(sideLength)"
    }
}

// caller
var triangle = EquilateralTriangle(sideLength: 3.2, name: "abc")
triangle.perimeter
triangle.perimeter = 100
triangle.sideLength

// enumerator - [type]
// - init?(rawValue:)
// - rawValue
enum Rank: Int {
    case one = 1
    case two, three
    
    func simpleDescription() -> String {
        return "rank: \(self.rawValue)"
    }
}

if let r = Rank(rawValue: 3) {
    print(r.simpleDescription())
}

if let r = Rank(rawValue: 4) {
    print(r.simpleDescription())
}

// enumerator - [case with parameter]
enum Shape {
    case triangle(Double)
    case rectangle(length: Double, height: Double)
    
    // export the parameter
    func simpleDescription() -> String {
        switch self {
        case let .triangle(side):
            return "triangle \(side)"
        case let .rectangle(length, height):
            return "rectangle \(length) \(height)"
        }
    }
}

let t = Shape.triangle(3)
print(t.simpleDescription())
let r = Shape.rectangle(length: 4, height: 3)
print(r.simpleDescription())


//: ### enumerated()
let myArray = ["a", "b", "c", "d", "e"]
var arraySlice = myArray[2..<5]
arraySlice[2] = "cc"
for (offset, item) in arraySlice.enumerated() {
    print("---\(offset), value:\(item)")
}
print(myArray)

//: ### zip
let a = [1, 2, 3, 4]
let b = ["a", "b", "c", "d", "e"]
let c = zip(a, b).map { $0 }
print(c)



//: ### ✨✨✨✨use zip not enumerated✨✨✨✨
//: 1. handle different sizes of arrays
//: 2. not care about whether the startIndex of array is 0
let data = [1, 2, 3, 4]
class VC {
    var d: Int?
}

let originVCs = [VC(), VC(), VC()]
let vcSlice = originVCs[1..<3]
//: #### zip usage
// usage 1
zip(vcSlice, data).map { $0.0.d = $0.1 }
vcSlice[1].d

// usage 2
for (vc, d) in zip(vcSlice, data) { vc.d = d*10 }
vcSlice[1].d

//: #### ✨tips: left, right✨
for (left, right) in zip(data, data.dropFirst()) {
    print(left, right)
}
 
//: [Next](@next)
