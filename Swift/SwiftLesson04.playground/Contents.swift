import UIKit

//Unit 4. Optional Chaining


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
