import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    
    var arr: [Int] = []
    var result: [Int] = []
    
    for (i, v) in score.enumerated() {
        
        arr.append(v)
        arr.sort {$0 > $1}
        
        if arr.count > k {
            arr.removeLast()
        }
        
        let a = arr.sorted {$0 < $1}
        result.append(a.first!)
        
    }
    
    return result
}