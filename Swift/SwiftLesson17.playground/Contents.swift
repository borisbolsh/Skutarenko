import UIKit

// Unit 17. Subscripts
// vk.com/topic-58860049_31848833

print("----- Part 1 -----")

enum Color {
    case black
    case white
}

struct ChessBoard {
    subscript(column: String, row: Int) -> Color? {
        var result: Color? = nil
        for (index, char) in "ABCDEFGH".enumerated() {
            if String(char) == column.uppercased() && 1...8 ~= row {
                result = ((index + 1) + row) % 2 != 0 ? Color.white : Color.black
                break
            }
        }
        return result
    }
}

let chessCell = ChessBoard()
print("""
B1: \(chessCell["B", 1]!)
H7: \(chessCell["H", 7]!)
A3: \(chessCell["A", 3]!)
G5: \(chessCell["G", 5]!)
F2: \(chessCell["F", 2]!)
D7: \(chessCell["D", 7]!)
""")



print("\n----- Part 2 -----")

enum Type: String {
    case cross = "\u{274C}"
    case zero = "\u{2B55}"
    case empty = "\u{2B1C}"
}

var turnCount = 1

struct GameField {
    var field = [[Type]]()
    
    mutating func createField(column: Int, row: Int) {
        for _ in 0..<column {
            var result = [Type]()
            for _ in 0..<row {
                result.append(.empty)
            }
            field.append(result)
        }
    }
    
    func printField() {
        print("   0 1 2")
        for x in 0..<field.count {
            var result = ""
            for y in 0..<field[x].count {
                result += field[x][y].rawValue
            }
            print("\(x) \(result)")
        }
    }
    
    var isWin: Bool {
        return field[0][0] == field[0][1] && field[0][0] == field[0][2] && field[0][0] != .empty ||
            field[1][0] == field[1][1] && field[1][0] == field[1][2] && field[1][0] != .empty ||
            field[2][0] == field[2][1] && field[2][0] == field[2][2] && field[2][0] != .empty ||
            field[0][0] == field[1][0] && field[0][0] == field[2][0] && field[0][0] != .empty ||
            field[0][1] == field[1][1] && field[0][1] == field[2][1] && field[0][1] != .empty ||
            field[0][2] == field[1][2] && field[0][2] == field[2][2] && field[0][2] != .empty ||
            field[0][0] == field[0][1] && field[0][0] == field[2][2] && field[0][0] != .empty ||
            field[0][2] == field[1][1] && field[0][2] == field[2][0] && field[2][0] != .empty
        
    }
    
    subscript(column: Int, row: Int) -> Type {
        get {
            return field[column][row]
        }
        set {
            let flag = newValue == .cross ? 1 : 0
            guard turnCount % 2 == flag else {
                print("No \(newValue) turn")
                return
            }
            guard !(column > field.count - 1 || row > field.count - 1) else {
                print("Wrong turn: Cell [\(column),\(row)] out of field")
                return
            }
            guard field[column][row] == .empty else {
                print("Wrong turn: Cell  [\(column),\(row)] already used")
                return
            }
            field[column][row] = newValue
            if newValue == .empty {
                print("Wrong symbol, enter .cross or .zero")
            } else {
                turnCount += 1
            }
            if isWin {
                turnCount % 2 == 0 ? print("Cross win. Game over") : print("Zero win. Game over")
            }
            if turnCount == 10 {
                print("Game over")
            }
        }
    }
}

var testGame = GameField()
testGame.createField(column: 3, row: 3)

testGame[1, 0] = .cross
testGame[2, 2] = .zero
testGame[2, 1] = .cross
testGame[1, 1] = .zero

testGame.printField()
