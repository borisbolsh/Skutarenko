import UIKit

// Unit 12. Enums
// vk.com/topic-58860049_31696394

enum Figure {
    
    case figure(name: Name, color: Color, x: Horizontal, y: Vertical)
    
    enum Name: String {
        case King = "King"
        case Queen = "Queen"
        case Rook = "Rook"
        case Knight = "Knight"
        case Bishop = "Bishop"
        case Pawn = "Pawn"
    }
    
    enum Color: String {
        case Black = "Black"
        case White = "White"
    }
    
    enum Horizontal: String {
        case A = "A"
        case B = "B"
        case C = "C"
        case D = "D"
        case E = "E"
        case F = "F"
        case G = "G"
        case H = "H"
    }
    
    enum Vertical: Int {
        case One = 1
        case Two = 2
        case Three = 3
        case Four = 4
        case Five = 5
        case Six = 6
        case Seven = 7
        case Eight = 8
    }
    
}

let whiteQueen = Figure.figure(name: .Queen, color: .White, x: .A, y:.Three)

let blackPawn = Figure.figure(name: .Pawn, color: .Black, x: .B, y:.Two)

let blackKing = Figure.figure(name: .King, color: .Black, x: .E, y:.Five)

var figureArray = [whiteQueen, blackPawn, blackKing]


//for figure in figureArray {
//    print("figure: \(figure.name.rawValue), color: \(figure.color.rawValue), x: \(figure.x.rawValue), y: \(figure.y.rawValue)")
//}

