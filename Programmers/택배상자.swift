import Foundation

func solution(_ order:[Int]) -> Int {
    
    var con: [Int] = []
    var trock = 0
    var ord = order
    var ordPointer = 0
    
    for i in 1...order.count {
        if i == ord[ordPointer] {
            trock += 1
            ordPointer += 1
        } else {
            con.append(i)
        }
        
        while con.last != nil && con.last == ord[ordPointer] {
            trock += 1
            con.removeLast()
            ordPointer += 1
        }
    }
    
    
    
    return trock
}