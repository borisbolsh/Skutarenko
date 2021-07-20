import UIKit

// Unit 18. Inheritance
// vk.com/topic-58860049_31876820


print("----- Part 1 -----")

class Artist {
    var firstName : String
    var lastName : String
    
    
    var fullName : String {
        return firstName + " " + lastName
    }
    
    init(firstName : String, lastName : String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func perform() -> String {
        return "\(fullName). Performance: "
    }
}

class Singer : Artist {
    override func perform() -> String {
        return super.perform() + " singing"
    }
}
class Dancer : Artist {
    override func perform() -> String {
        return super.perform() + " dancing"
    }
}
class Painter : Artist {
    override var firstName : String {
        get {
            return "Great " + super.firstName
        }
        set {
            super.firstName = newValue
        }
    }
    override func perform() -> String {
        return super.perform() + " painting"
    }
}

let singer = Singer(firstName: "Mike", lastName: "Johnes")
let dancer = Dancer(firstName: "Pamela", lastName: "Jeffers")
let painter = Painter(firstName: "Nickolas", lastName: "Banks")

let array = [singer, dancer, painter]

for value in array {
    print(value.perform())
}
