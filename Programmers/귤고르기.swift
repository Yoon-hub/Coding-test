import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    
    var dic: [Int: Int] = [:]
    
    for i in tangerine {
        if dic[i] == nil {
            dic[i] = 1
        } else {
            dic[i] = dic[i]! + 1
        }
    }
    
    var arr = dic.sorted { $0.value > $1.value }.map {$0.value}
    
    var count = 0 
    var result = 0
    
    for i in arr {
        count += i
        result += 1
        
        if count >= k {
            break
        }
    }
    
   
    
    return result
}