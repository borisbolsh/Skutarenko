import UIKit

// Unit 11. Closures
// vk.com/topic-58860049_31683288


print("\n----- Part 1 -----")

func counter(myClosures: ()->()) -> () {
    for i in 0...9{
        print(i)
    }
    myClosures()
}

counter {
    print("My clouseres")
}



print("\n----- Part 2 -----")

let newArray = [1, 33, 77, 23, 45, 2, 3, 4, 5, 6, 7, 8, 9]

print(newArray.sorted(by: { $0 < $1}))
print(newArray.sorted(by: { $0 > $1}))



print("\n----- Part 3 -----")

let numbersArray = [-1, 333, 23, 99, 312, 0 , 1, 99, -55, 62]

func findMinOrMax(array: [Int], f: (Int, Int?)->Bool) -> Int {
    var output: Int? = 0
    for value in array {
        if f(value, output) {
            output = value
        }
    }
    return output!
}

let minNum = findMinOrMax(array: numbersArray, f: { $0 < $1! })
print(minNum)
let maxNum = findMinOrMax(array: numbersArray, f: { $0 > $1! })
print(maxNum)



print("\n----- Part 4 -----")

let randomString = "Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. and the open-source community. First released in 2014, Swift was developed as a replacement for Apple's earlier programming language Objective-C, as Objective-C had been largely unchanged since the early 1980s and lacked modern language features."

var lettersArray = [String]()

for value in randomString {
    lettersArray.append(String(value))
}

func priority(_ string: String) -> Int {
    switch string.lowercased() {
    case "a", "e", "i", "o", "u", "y": return 0
    case "b", "l", "m", "n", "d", "q", "k", "p", "t", "f", "h", "z", "v", "j", "g", "c", "s", "x", "r", "w":
        return 1
    case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
        return 2
    default:
        return 3
    }
}


let sortedStrings = lettersArray.sorted {
    switch (priority($0), priority($1)) {
    case let(x, y) where x < y: return true
    case let(x, y) where x > y: return false
    default: return $0.lowercased() <= $1.lowercased()
    }
}

print(sortedStrings)



print("\n----- Part 5 -----")

let stringArray = ["a", "z", "v", "j", "c", "g"]


func filter(_ array: [String], f: (String?, String) -> Bool) -> String {
    
    var number: String?
    
    for value in array {
        if f(number, value) {
            number = value
        }
    }
    return number ?? " "
}

let maxStr = filter(stringArray, f: {
    $0 == nil || $0! < $1
})

print(maxStr)

let minStr = filter(stringArray, f: {
    $0 == nil || $0! > $1
})

print(minStr)
