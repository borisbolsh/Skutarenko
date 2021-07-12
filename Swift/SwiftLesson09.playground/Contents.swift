import UIKit

// Unit 9. Switch statement
// vk.com/topic-58860049_31636394



print("\n----- Part 1 -----")

let text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis id ipsum quam. Aenean nunc erat, rhoncus vitae aliquam ut, volutpat at dolor. Curabitur non sem leo. Integer fringilla 9 lacus id accumsan tincidunt. Mauris rhoncus elementum magna, id fermentum turpis 34 blandit vel. Curabitur in volutpat felis, sed tristique augue. In id erat ut dui blandit facilisis. Proin nulla 21 nibh, faucibus sit amet fringilla et, tincidunt sed ipsum."


var lettersCounter = ["numbers": 0, "vowels": 0, "consonants": 0, "symbols": 0]

for char in text.lowercased() {
    switch char{
    case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
        lettersCounter["numbers"]! += 1
    case "a", "e", "i", "o", "u", "y":
        lettersCounter["vowels"]! += 1
    case "b", "l", "m", "n", "d", "q", "k", "p", "t", "f", "h", "z", "v", "j", "g", "c", "s", "x", "r", "w":
        lettersCounter["consonants"]! += 1
    case ",", ".", " ", "!", ";", "?", "/", "_", "+", "-":
        lettersCounter["symbols"]! += 1
    default:
        print("\(char)")
    }
}

print(lettersCounter)



print("\n----- Part 2 -----")

var yourAge = 35

switch yourAge {
case 0...6:
    print("Baby")
case 7...10:
    print("Child")
case 11...17:
    print("Pupil")
case 18...23:
    print("Student")
case 24...70:
    print("Man")
case 71...120:
    print("Oldman")
default:
    print("Wrong age")
}



print("\n----- Part 3 -----")

let student = ("Amirnov", "Alex", "Felixovich")

switch student {
case let (_, name,_) where name.hasPrefix("A") || name.hasPrefix("O"):
    print("\(name)")
case let (_, name, secondname) where secondname.hasPrefix("B") || secondname.hasPrefix("D"):
    print("\(name) \(secondname)")
case let (surname, _, _) where surname.hasPrefix("A") || surname.hasPrefix("O"):
    print("\(surname)")
case let (surname, name, secondname):
    print("\(surname) \(name) \(secondname)")
}



print("\n----- Part 4 -----")

let cellTuple = ("H", 1)

switch cellTuple{
case ("H", 8...10), ("A", 3...5):
    print("Hurt")
case ("B", 1...3):
    print("Destroy")
default:
    print("Miss")
}

