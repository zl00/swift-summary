
//: - BASIC OPERATORS

import UIKit

let (x, y) = (1, 2)

//Addition is also available for strings
let string = "hello, " + "world"

//Nil Coalescing Operator
//It's equivalent to (a ? b : c), but for optionals

var optional: String? //Currently nil

// optional = "Some Value" // Uncomment/comment this line and observe what values get printed below
var value = optional ?? "Value when `optional` is nil"

// above statement is equivalent to below
// if optional != nil {
// 	value = optional! //Unwrapped value
// } else {
//  	value = "Value when `optional` is nil"
// }

//Range operators
for index in 1...5 {
    //It will iterate 5 times.
}

var array = [1,2,3]

for index in 0..<array.count{
    //It will iterate (array.count - 1) times.
}

// Enumerate array with index and value, C loop will be removed soon
for (index, value) in array.enumerated() {
    print("value \(value) at index \(index)")
}
