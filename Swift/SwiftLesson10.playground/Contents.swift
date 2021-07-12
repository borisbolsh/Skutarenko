import UIKit

// Unit 10. Functions
// vk.com/topic-58860049_31650842



print("\n----- Part 1 -----")

func heart() -> String {
    return "\u{1F9E1}"
}

func flame() -> String {
    return "\u{1F525}"
}

func cool() -> String {
    return "\u{1F60E}"
}

print(heart() + " " + flame() + " " + cool())




print("\n----- Part 2 -----")

let letters = [ "a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8 ]

func chess(letter1: String, numb: Int) -> String {
    if (letters[letter1.lowercased()]! + numb) % 2 != 0 {
        return "White cell"
    }
    return "Black cell"
}

let cellTry = chess(letter1: "e", numb: 3)

print(cellTry)




print("\n----- Part 3 -----")

var originArray = [ 11, 22, 33, 44, 55, 66, 77, 88, 99 ]

func turnArray(_ array: [Int]) -> ([Int]) {
    var newArray = [Int]()
    
    for i in array.reversed() {
        newArray.append(i)
    }
    
    return newArray
}

print(turnArray(originArray))

func turnArray2 (_ listInt: Int...) -> ([Int]) {
    return turnArray(listInt)
}

print(turnArray2(1,2,3,4,5))




print("\n----- Part 4 -----")

func inOutArray(array: inout [Int]) {
    var count = 1
    
    for i in array {
        array.insert(i, at: count)
        array.remove(at: count)
        count += 1
    }
}

inOutArray(array: &originArray)
print(originArray)



print("\n----- Part 5 -----")


let randomStr = "Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. and the open-source community. First released in 2014, Swift was developed as a replacement for Apple's earlier programming language Objective-C, as Objective-C had been largely unchanged since the early 1980s and lacked modern language features."

func changeStr(_ str: String) -> (String) {
    var newStr = ""
    
    let numbers = ["1" : "one", "2" : "two", "3" : "three", "4" : "four", "5" : "five", "6" : "six", "7" : "seven", "8" : "eight", "9" : "nine", "0" : "zero"]
    
    for i in str {
        let j = String(i)
        switch i {
        case "a", "e", "i", "o", "u", "y":
            newStr.append(i.uppercased())
        case "b", "l", "m", "n", "d", "q", "k", "p", "t", "f", "h", "z", "v", "j", "g", "c", "s", "x", "r", "w":
            newStr.append(i.lowercased())
        case ",", ".", " ", "!", ";", "?", "/", "_", "+", "-":
            newStr.append(" ")
        case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
            newStr.append("\(numbers[j]!)")
        default:
            newStr.append(i)
            
        }
    }
    return newStr
}

print(changeStr(randomStr))
