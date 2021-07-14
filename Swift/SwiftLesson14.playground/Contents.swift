import UIKit

// Unit 14. Properties
// vk.com/topic-58860049_31729218

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
}

var student1 = Student(firstName: "Vlad", lastName: "Komov")

student1.firstName
student1.firstName = "Mike"
student1.lastName
student1.lastName = "Jackson"

var student2 = student1

student1.fullName = "Ivanov"
print("---")
student1.firstName
print("---")
student1.lastName = "lex"
student1.fullName = "roman abram"
print("---")
student1.firstName
print("---")
student1.lastName


student2.fullName
