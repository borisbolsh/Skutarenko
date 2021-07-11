import UIKit
import Foundation


// Task 6. Strings


// Task 1

let firstStr = "123"
let secondStr = "2n34"
let thirdStr = "fkdj"
let fourthStr = "321"
let fifthStr = "99"

let moreThenZiro1 = Int(firstStr) ?? 0
let moreThenZiro2 = Int(secondStr) ?? 0
let moreThenZiro3 = Int(thirdStr) ?? 0
let moreThenZiro4 = Int(fourthStr) ?? 0
let moreThenZiro5 = Int(fifthStr) ?? 0

let firstStr2 = moreThenZiro1 != 0 ? String(moreThenZiro1) : "nil"
let secondStr2 = moreThenZiro2 != 0 ? String(moreThenZiro2) : "nil"
let thirdStr2 = moreThenZiro3 != 0 ? String(moreThenZiro3) : "nil"
let fourthStr2 = moreThenZiro4 != 0 ? String(moreThenZiro4) : "nil"
let fifthStr2 = moreThenZiro5 != 0 ? String(moreThenZiro5) : "nil"

let sum = moreThenZiro1 + moreThenZiro2 + moreThenZiro3 + moreThenZiro4 + moreThenZiro5


print("\(firstStr2)" + " + " + "\(secondStr2)" + " + " + "\(thirdStr2)" + " + " + "\(fourthStr2) + " + "\(fifthStr2)" + " = " + "\(sum)" )

print("\(firstStr2) + \(secondStr2) + \(thirdStr2) + \(fourthStr2) + \(fifthStr2) = \(sum)")



// Task 2

let smilesString = "\u{1F601} + \u{1F69C} = \u{1F680}"

smilesString.count
(smilesString as NSString).length



// Task 3
let alphabet = "abcdefghijklmnopqrstuvwxyz"
alphabet.count

let searchChar: Character = "y"
var index = 0

for char in alphabet {
    if searchChar == char {
        print("\(char) -s index is \(index)")
    }
    index += 1
}
