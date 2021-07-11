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
