import UIKit

// Unit 16. Methods
// vk.com/topic-58860049_31835726

struct Room {
    var weight : Int
    var height : Int
}

struct Player {
    
    var x: Int
    var y: Int
    
    mutating func walk(direct: Direction) {
        switch direct {
        case .Up :
            self.y = y - 1
        case .Down :
            self.y = y + 1
        case .Right :
            self.x = x + 1
        case .Left :
            self.x = x - 1
        }
    }
}

struct Box {
    var x: Int
    var y: Int
    
    mutating func move(direct: Direction) {
        
        switch direct {
        case .Up :
            self.y = y - 1
        case .Down :
            self.y = y + 1
        case .Right :
            self.x = x + 1
        case .Left :
            self.x = x - 1
        }
    }
    
}

struct Point {
    var x: Int
    var y: Int
}

enum Direction {
    case Left,
         Right,
         Up,
         Down
}

