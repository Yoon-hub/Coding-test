import Foundation

func solution(_ s:String) -> [Int] {
    var word: [String: Int] = [:]
    var result: [Int] = []
    
    for (i, val) in s.map {String($0)}.enumerated() {
        if let beforeIndex = word[val] {
            result.append(i - beforeIndex)
        } else {
            result.append(-1)
        }
        word[val] = i
    }
    
    return result
}
