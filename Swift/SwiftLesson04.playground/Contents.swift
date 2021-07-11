import UIKit

// Unit 4. Optional Chaining


// Part 1

let firstConst = "123"
let secondConst = "2n34"
let thirdConst = "fkdj"
let fourthConst = "321"
let fifthConst = "99"

var sumConsts = 0


// Optinal binding

if let firstInt = Int(firstConst) {
    sumConsts += firstInt
}

if let secondInt = Int(secondConst) {
    sumConsts += secondInt
}

if let fifthInt = Int(fifthConst) {
    sumConsts += fifthInt
}


// Forced Unwrapping

if Int(thirdConst) != nil {
    sumConsts += Int(thirdConst)!
}

if Int(fourthConst) != nil {
    sumConsts += Int(fourthConst)!
}

print(sumConsts)


// Part 2

var serverResponse: ( statusCode: Int, message: String?, errorMessage: String? ) = ( 200, "Server is running", "Server is offline" )

// serverResponse.message = nil
// serverResponse.errorMessage = nil

if serverResponse.statusCode > 199 && serverResponse.statusCode < 300 {
    if serverResponse.message == nil {
        print( "Server haven't message." )
    } else if serverResponse.errorMessage == nil {
        print( "Server haven't error message." )
    } else {
        print( serverResponse.message! )
    }
} else {
    print( "Server response error. Try again later" )
}



// Part 3

var student1: ( name: String?, numberCar: Int?, lastTestScore: Int? ) = ( nil, nil, nil )
var student2: ( name: String?, numberCar: Int?, lastTestScore: Int? ) = ( nil, nil, nil )
var student3: ( name: String?, numberCar: Int?, lastTestScore: Int? ) = ( nil, nil, nil )
var student4: ( name: String?, numberCar: Int?, lastTestScore: Int? ) = ( nil, nil, nil )
var student5: ( name: String?, numberCar: Int?, lastTestScore: Int? ) = ( nil, nil, nil )

student1.name = "Ivan"
student2.name = "Helen"
student3.name = "Bob"
student4.name = "Kate"
student5.name = "John"

student1.numberCar = 111
student2.numberCar = 222
student3.numberCar = 333

student3.lastTestScore = 3
student4.lastTestScore = 4
student5.lastTestScore = 5

print("\n-----------------------------------------------------\n")
print("Student 1")

if student1.numberCar != nil {
    print ("\(student1.name!) has a car. Car number is - \(student1.numberCar!)")
} else {
    print ("\(student1.name!) hasn't a car.")
}

if student1.lastTestScore != nil {
    print ("\(student1.name!) is a good student. His last score is \(student1.lastTestScore!)")
} else {
    print ("\(student1.name!) missed the last test.")
}


print("\n-----------------------------------------------------\n")
print("Student 2 - \(student2.name!) ")

if let studentCar2 = student2.numberCar {
    print ("Student has a car. Car number is - \(studentCar2)")
} else {
    print ("Student hasn't a car.")
}

if let studentTestScore2 = student2.lastTestScore {
    print ("The last score is \(studentTestScore2)")
} else {
    print ("Student missed the last test.")
}


print("\n-----------------------------------------------------\n")
print("Student 3 - \(student3.name!) ")

if let studentCar3 = student3.numberCar {
    print ("Student has a car. Car number is - \(studentCar3)")
} else {
    print ("Student hasn't a car.")
}

if let studentTestScore3 = student3.lastTestScore {
    print ("The last score is \(studentTestScore3)")
} else {
    print ("Student missed the last test.")
}

print("\n-----------------------------------------------------\n")
print("Student 4")

if student4.numberCar != nil {
    print ("\(student4.name!) has a car. Car number is - \(student4.numberCar!)")
} else {
    print ("\(student4.name!) hasn't a car.")
}

if student4.lastTestScore != nil {
    print ("\(student4.name!) is a good student. Her last score is \(student4.lastTestScore!)")
} else {
    print ("\(student4.name!) missed the last test.")
}

print("\n-----------------------------------------------------\n")
print("Student 5")

if student5.numberCar != nil {
    print ("\(student5.name!) has a car. Car number is - \(student5.numberCar!)")
} else {
    print ("\(student5.name!) hasn't a car.")
}

if student5.lastTestScore != nil {
    print ("\(student5.name!) is a good student. His last score is \(student5.lastTestScore!)")
} else {
    print ("\(student5.name!) missed the last test.")
}
