import UIKit

// Unit 7


// Task 1

let daysInMonthes = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for days in daysInMonthes {
    print(days)
}

print("\n---------------------------------------------\n")


let monthesInYear = ["January", "February", "March", "April", "May", "June", "July", "August", "September",  "October", "November", "December"]

for (index, month) in monthesInYear.enumerated() {
    print("\((index) + 1). There are \(daysInMonthes[index]) days in \(month)")
}

print("\n---------------------------------------------\n")


let monthsYear = [("January", 31), ("February", 28), ("March", 31), ("April", 30), ("May", 31), ("June", 30), ("July", 31), ("August", 31), ("September", 30), ("October", 31), ("November", 30), ("December", 31)]

for (month, days) in monthsYear {
    print("There are \(days) days in \(month)")
}

print("\n---------------------------------------------\n")


for (month, days) in monthsYear.reversed(){
    print("There are \(days) days in \(month)")
}

print("\n---------------------------------------------\n")


let dateOfBirth = (month: "August", days: 1)
var daysBeforeBirth = 0

for (month, days) in monthsYear {
    if month == dateOfBirth.month {
        daysBeforeBirth += dateOfBirth.days
        break
    } else {
        daysBeforeBirth += days
    }
}

print("There are \(daysBeforeBirth) days from 1 January to \(dateOfBirth.days) \(dateOfBirth.month)")




// Task 2

print("\n---------------------------------------------\n")

let optArrey: [Int?] = [1, 333, nil, 322, 1234, nil, nil, 999]

var sum1 = 0
var sum2 = 0
var sum3 = 0


print("Task 2.1")

for item in optArrey {
    if let opt = item {
        sum1 += opt
    }
}

print("Option binding. Sum = \(sum1)")


print("Task 2.2")

for item in optArrey {
    if item != nil {
        sum2 += item!
    }
}

print("Forced Unwrapping. Sum = \(sum2)")


print("Task 2.3")

for item in optArrey {
    sum3 += item ?? 0
}

print("With nil-coalescing operator. Sum = \(sum3)")




// Task 3

print("\n---------------------------------------------\n")

let alphabet = "abcdefghijklmnopqrstuvwxyz"

var emptyArrey = [String]()

for char in alphabet.reversed() {
    emptyArrey.append(String(char))
}
print("Task 3")
print(emptyArrey)
