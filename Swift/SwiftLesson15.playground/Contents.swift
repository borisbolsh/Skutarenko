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
