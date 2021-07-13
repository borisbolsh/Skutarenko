import UIKit

// Unit 13. Classes and Structures
// vk.com/topic-58860049_31709995


print("\n----- Part 1 -----")

struct Students {
    var name: String
    var surname: String
    var yearOfBirth: Int
    var averageScore: Double
}

var studentOne = Students(name: "Alex", surname: "Johns", yearOfBirth: 1990, averageScore: 4.5)

var studentTwo = Students(name: "Helen", surname: "Smith", yearOfBirth: 1995, averageScore: 4.9)

var studentThree = Students(name: "Robert", surname: "McDonald", yearOfBirth: 1992, averageScore: 4.2)

var studentCopyOne = studentOne

studentCopyOne.name = "Tom"
studentCopyOne.surname = "Ivanov"
studentCopyOne.yearOfBirth = 1999
studentCopyOne.averageScore = 4.9

let studentsJournal = [studentOne, studentTwo, studentThree]
print(studentsJournal)


print("\n----- Part 2 -----")

func printArray(array: [Students] ) {
    for student in array {
        print("\(array.firstIndex(where: {$0.name == student.name && $0.surname == student.surname})! + 1). \(student.name) \(student.surname), year of birth: \(student.yearOfBirth), averageScore: \(student.averageScore)")
    }
}

printArray(array: studentsJournal)



print("\n----- Part 3 -----")
 
let studentsArraySortedByScore = studentsJournal.sorted{
    $0.averageScore > $1.averageScore
}

printArray(array: studentsArraySortedByScore)



print("\n----- Part 4 -----")
let studentsArraySortedBySurname = studentsJournal.sorted{
    $0.surname == $1.surname ? $0.name < $1.name : $0.surname < $1.surname
}

printArray(array: studentsArraySortedBySurname)



print("\n----- Part 5 -----")

var newArrey = studentsJournal
newArrey[0].name = "Jack"
newArrey[1].surname = "Leon"
newArrey[2].yearOfBirth = 2021
newArrey[0].averageScore = 9.9
print("Old")
printArray(array: studentsJournal)
print("New")
printArray(array: newArrey)



print("\n----- Part 6 -----")

class StudentsClass {
    var name: String
    var surname: String
    var yearOfBirth: Int
    var averageScore: Double
    
    init(name: String, surname: String, yearOfBirth: Int, averageScore: Double) {
        self.name = name
        self.surname = surname
        self.yearOfBirth = yearOfBirth
        self.averageScore = averageScore
    }
}

let pupilOne = StudentsClass(name: "Ivan", surname: "Ivanov", yearOfBirth: 1901, averageScore: 3.01)
let pupilTwo = StudentsClass(name: "Vasya", surname: "Kuzin", yearOfBirth: 1950, averageScore: 3.11)
let pupilThree = StudentsClass(name: "Mihail", surname: "Mostovoy", yearOfBirth: 1960, averageScore: 3.99)

let pupilsArray = [pupilOne, pupilTwo, pupilThree]
var newPupilsArray = pupilsArray

newPupilsArray[0].name = "AAA"
newPupilsArray[1].name = "BBB"
newPupilsArray[2].name = "CCC"

func printArray(array: [StudentsClass] ) {
    for student in array {
        print("\(array.firstIndex(where: {$0.name == student.name && $0.surname == student.surname})! + 1). \(student.name) \(student.surname), year of birth: \(student.yearOfBirth), averageScore: \(student.averageScore)")
    }
}

print("Old")
printArray(array: pupilsArray)
print("New")
printArray(array: newPupilsArray)
