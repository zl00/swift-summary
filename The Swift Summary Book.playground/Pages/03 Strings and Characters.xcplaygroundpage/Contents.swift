//: [Previous](@previous)
import Foundation

//: Strings Are Value Types
var string = "123"
withUnsafePointer(to: &string) { print("\($0)") }
var anotherString = string
withUnsafePointer(to: &anotherString) { print("\($0)") }
string = "321"
print(anotherString)

//: String and Character
// loop characters in a string
string = "Hello 🐶"
for c in string.characters {
    print(c)
}

// init string with characters
let characters: [Character] = ["H", "i", ",", "🐶"]
string = String(characters)

// append a character to string
string.append("!")


//: Unicode. Swift characters or strings based on 21-bit unicode scalars
let sparklingHeart = "\u{1F496}"

//: Unicode - Extended Grapheme Clusters
let normalE: Character = "\u{65}"
let combinedE = "\u{65}\u{301}"
for codeUnit in combinedE.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("--")

// Unicode Representations of Strings
let dogString = "Dog‼🐶"

// UTF8
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")

// UTF16
for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")

for codeUnit in dogString.unicodeScalars {
    print("\(codeUnit) ", terminator: "")
}
print("")

for codeUnit in dogString.characters {
    print("\(codeUnit) ", terminator: "")
}
print("")
//: [Next](@next)
