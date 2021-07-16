import UIKit

// Unit 14. Properties
// vk.com/topic-58860049_31729218


print("----- Part 0-----")

// Stored properties
struct Man {
    var firstName : String
}

var manOne = Man(firstName: "Robert")
manOne.firstName



print("----- Part 1 -----")

struct Student {
    
    var firstName : String {
        
        willSet {
            print("will set " + newValue + " instead of " + firstName)
        }
        didSet {
            print("did set " + firstName + " instead of " + oldValue)
            
            firstName = firstName.capitalized
        }
    }
    
    var lastName : String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    
    var fullName : String {
        
        get {
            return firstName + " " + lastName
        }
        set {
            print("fullName wants to be set to " + newValue)
            
            let words = newValue.components(separatedBy: " ")
            
            if words.count > 0 {
                firstName = words[0]
            }
            
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
    var dateOfBirth: Date
}

var student1 = Student(firstName: "Vlad", lastName: "Komov", dateOfBirth: Date(day: 21, month: 5, year: 2009))

student1.firstName
student1.firstName = "Mike"
student1.lastName
student1.lastName = "Jackson"

var student2 = student1

student1.fullName = "Ivanov"

student1.firstName

student1.lastName = "lex"
student1.fullName = "roman abram"

student1.firstName

student1.lastName

student1.fullName
student2.fullName



print("----- Part 2 -----")

struct Date{
    var day: Int
    var month: Int
    var year: Int
    var age: Int {
        get {
            let months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
            var countDays = 0
            var count = 1
            for mont in months {
                if count <= month - 1 {countDays += mont}
                count = count + 1
            }
            if countDays + day <= 151 {
                return 2021 - year
            } else {
                return 2021 - year - 1
            }
        }
    }
    
    var howLongStudy: Int {
        get {
            switch age {
            case 0...6 : return 0
            case 17... : return 11
            default: return age - 6
            }
        }
    }
}

student1.dateOfBirth.howLongStudy



print("----- Part 3 -----")

struct Segment {
    
    struct Point {
        var x: Double
        var y: Double
    }
    
    var a: Point
    var b: Point
    
    var midPoint: Point {
        get {
            return Point(x: (a.x + b.x) / 2, y: (a.y + b.y) / 2)
        }
        set {
            let diffX = newValue.x - midPoint.x
            let diffY = newValue.y - midPoint.y
            a.x += diffX
            b.x += diffX
            a.y += diffY
            b.y += diffY
        }
    }
    
    var lenght: Double {
        get {
            return sqrt(pow(a.x - b.x, 2) + pow(a.y - b.y, 2))
        }
        set {
            b.x = (a.x + (b.x - a.x) * newValue / lenght)
            b.y = (a.y + (b.y - a.y) * newValue / lenght)
        }
    }
}

var newSegment = Segment(a: Segment.Point(x: 3, y: 5), b: Segment.Point(x: 6, y: 10))
print("""
PointA: \(newSegment.a)
PointB: \(newSegment.b)
Lenght: \(newSegment.lenght)
MidPoint: \(newSegment.midPoint)
""")

