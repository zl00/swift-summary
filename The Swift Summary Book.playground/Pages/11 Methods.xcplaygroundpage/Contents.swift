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
 There are instance methods and type (class) methods
 */
struct Point {
    var x = 0.0, y = 0.0
    static var xy = 0.0
    
    // ``mutating`` Always, we think struct is a constant variable, so, if the method of struct wants to modify the properties, it must have mutating
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
        
        self = Point(x: x + deltaX, y: y + deltaY)
    }
    
    // This is a type method.
    static func typeMethod(level: Double) {
        xy = level
    }
}
let constP = Point(x: 2, y: 2)
//constP.moveByX(deltaX: 3, y: 3)
var varP = Point(x: 2, y: 2)
varP.moveByX(deltaX: 3, y: 3)


//: Class
class ViewController: UIViewController {
    
    var count = 0
    
    //This is an instance method
    func increment() {
        count += 1
    }
    
    //This is a class method.
    class func someTypeMethod() {
        print("Class Method")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
let vc: ViewController = ViewController()
vc.count = 1
print(vc.count)

