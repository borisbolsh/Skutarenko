import UIKit

// Unit 5. Basic Operators


// Part 1

let secondsInHour = 60 * 60
let secondsInDay = secondsInHour * 24

let monthesTuple = (jan: 31, feb: 28, mar: 31, apr: 30, may: 31, jun: 30, jul: 31, aug: 31, sep: 30, oct: 31, nov: 30, dec: 31 )

let secondsToBirthday = (monthesTuple.jan + monthesTuple.feb + monthesTuple.mar + monthesTuple.apr + monthesTuple.may + monthesTuple.jun + monthesTuple.jul + monthesTuple.aug + monthesTuple.sep + monthesTuple.oct  + monthesTuple.nov + (monthesTuple.dec - 7)) * secondsInDay

print ("Seconds from 1 january to my birthday: \(secondsToBirthday) ")
