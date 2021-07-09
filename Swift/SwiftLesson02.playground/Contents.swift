import UIKit


// 1 part

print( """
Signed and unsigned integers

Int8.min: \(Int8.min)
Int8.max: \(Int8.max)

Int32.min: \(Int32.min)
Int32.max: \(Int32.max)

Int64.min: \(Int64.min)
Int64.max: \(Int64.max)

UInt8.min: \(UInt8.min)
UInt8.max: \(UInt8.max)

UInt32.min: \(UInt32.min)
UInt32.max: \(UInt32.max)

UInt64.min: \(UInt64.min)
UInt64.max: \(UInt64.max)

""")


// 2 part

let a: Int = 3
let b: Float = 2.05
let c: Double = 3.333

let sumAbcInt = a + Int(b) + Int(c)
let sumAbcFloat = Float(a) + b + Float(c)
let sumAbcDouble = Double(a) + Double(b) + c


// 3 part

if Double(sumAbcInt) < sumAbcDouble {
    print("Double is preferred. It's more correct")
} else {
    print("Nevermind")
}
