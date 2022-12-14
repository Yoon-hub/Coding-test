import Foundation

func solution(_ babbling:[String]) -> Int {
    var can: [String] = ["aya", "ye", "woo", "ma"]
    var count = 0 
    for i in babbling {
        var a = i
        var nodollarCount = 0
        if a.contains("ayaaya") || a.contains("yeye") || a.contains("woowoo") || a.contains("mama") {
            continue
        } 
        
        for j in can {
             a = a.replacingOccurrences(of: j ,with: "$")
        }
        
        if a.count == a.filter { $0 == "$" }.count {
            count += 1
        }
    }
    
    return count
}