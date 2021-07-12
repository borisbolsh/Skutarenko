import UIKit

// Unit 8. Dictionary


print("\n------ Part 1 ------\n")

var studentsScore = ["John Black": 100, "Robert White": 90, "Helen Robertson": 95, "Donald McDonald": 98, "Tim Manchinny": 80]

studentsScore ["Donald McDonald"] = 100
studentsScore.updateValue(99, forKey: "Helen Robertson")

studentsScore ["Bryan Gittburg"] = 78
studentsScore ["Kate Kettler"] = 81
studentsScore ["Stella Allen"] = 68
studentsScore ["Adam Adams"] = 98

studentsScore ["Bryan Gittburg"] = nil
studentsScore.removeValue(forKey: "John Black")

print(studentsScore)



print("\n\n------ Part 2 ------\n")

let monthsYear = ["January": 31, "February": 28, "March": 31, "April": 30, "May": 31, "June": 30, "July": 31, "August": 31, "September": 30, "October": 31, "November": 30, "December": 31]
 
print("Loop 1")
for (month, days) in monthsYear {
    print("There are \(days) days in \(month)")
}

print("\nLoop 2")
for days in monthsYear.keys {
    print("There are \(days) days in \(monthsYear[days] ?? 0)")
}



print("\n\n------ Part 3 ------\n")

var chessBoard = [String: Bool]()

var cellsHorizontal = ["A", "B", "C", "D", "E", "F", "G", "H"]
var cellsVertical = [1, 2, 3, 4, 5, 6, 7, 8]

for cellH in 0..<cellsHorizontal.count {
    
    for cellV in 0..<cellsVertical.count {
        chessBoard.updateValue(cellH % 2 != cellV % 2, forKey: cellsHorizontal[cellH] + String(cellsVertical[cellV]))
    }
}

print(chessBoard)
