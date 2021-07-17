import UIKit

// Unit 15. Properties 2
// vk.com/topic-58860049_31821488


print("\n----- Task 1 ----")

struct FileDescription {
    var path: String
    var fileName: String {
        didSet {
            if isHidden { fileName = "" }
            path = FileDescription.pathToFolder + fileName
        }
    }
    static var maxSize = 10
    static var pathToFolder = "C://Folder/"
 
    var isHidden: Bool
    var content: String {
        didSet {
            if content.count > FileDescription.maxSize { content = oldValue }
        }
    }
    
    init(fileName: String, isHidden: Bool, content: String) {
        self.fileName = fileName
        self.isHidden = isHidden
        self.content = content
        self.path = FileDescription.pathToFolder + fileName
    }
}

var fileOne = FileDescription(fileName: "Task.txt", isHidden: false, content: "abcdefgh")
fileOne.content
fileOne.isHidden
print("\(fileOne.path)")



print("\n----- Task 2 ----")

enum ColorGamma: Int {
    static var numberColor = 3
    static var firstColor = ColorGamma.red
    static var lastColor = ColorGamma.green
    
    case red = 0xff0000
    case blue = 0x0000ff
    case green = 0x00ff00
    case white = 0x000000
    case black = 0xffffff
    case cyan = 0x00ffff
    case yellow = 0xffff00
}

print("\(ColorGamma.firstColor)")



print("\n----- Task 3 ----")

class Human {
    var name: String {
        didSet {
            if name.count < Human.minNameLenght || name.count > Human.maxNameLenght { name = oldValue }
        }
    }
    var surname: String {
        didSet {
            if surname.count < Human.minNameLenght  || surname.count > Human.maxNameLenght { surname = oldValue }
        }
    }
    var age: Int {
        didSet {
            if age < Human.minAge || age > Human.maxAge { age = oldValue }
        }
    }
    var height: Int {
        didSet {
            if height < Human.minHeight || height > Human.maxHeight { height = oldValue }
        }
    }
    var weight: Int {
        didSet {
            if weight < Human.minWeight || height > Human.maxWeight { weight = oldValue }
        }
    }
    
    static var maxAge = 110
    static var minAge = 14
    static var maxNameLenght = 15
    static var minNameLenght = 2
    static var maxHeight = 250
    static var minHeight = 120
    static var maxWeight = 200
    static var minWeight = 30
    static var countHumans = 0
    
    init(name: String, surname: String, age: Int, height: Int, weight: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.height = height
        self.weight = weight
        
        Human.countHumans += 1
    }
}


var manOne = Human(name: "Ivan", surname: "Ivanov", age: 33, height: 180, weight: 80)
var womenTwo = Human(name: "Helen", surname: "Smirnova", age: 44, height: 170, weight: 66)

manOne.name = ""
manOne.surname = "Kuznecov"
manOne.age = 99

print("""
Man
name: \(manOne.name)
surname: \(manOne.surname)
age: \(manOne.age)

Count human \(Human.countHumans)
""")
