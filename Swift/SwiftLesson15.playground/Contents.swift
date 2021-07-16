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

