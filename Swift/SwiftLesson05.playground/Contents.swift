import UIKit

// Unit 5. Basic Operators


// Part 1

let secondsInHour = 60 * 60
let secondsInDay = secondsInHour * 24

let monthesTuple = (jan: 31, feb: 28, mar: 31, apr: 30, may: 31, jun: 30, jul: 31, aug: 31, sep: 30, oct: 31, nov: 30, dec: 31 )

let secondsToBirthday = (monthesTuple.jan + monthesTuple.feb + monthesTuple.mar + monthesTuple.apr + monthesTuple.may + monthesTuple.jun + monthesTuple.jul + monthesTuple.aug + monthesTuple.sep + monthesTuple.oct  + monthesTuple.nov + (monthesTuple.dec - 7)) * secondsInDay

print ("Seconds from 1 january to my birthday: \(secondsToBirthday) ")


// Part 2

let monthNumber = 7

if monthNumber > 0 && monthNumber < 4 {
    print("This is the first quarter")
} else if monthNumber > 3 && monthNumber < 7 {
    print("This is the second quarter")
} else if monthNumber > 6 && monthNumber < 10 {
    print("This is the third quarter")
} else if monthNumber > 9 && monthNumber < 13 {
    print("This is the fourth quarter")
} else {
    print("Month number isn't correct")
}


// Part 3

let cell = (vertical: 8, horisontal: 7)

if cell.vertical % 2 == cell.horisontal % 2 {
    print("black")
} else {
    print("white")
}
