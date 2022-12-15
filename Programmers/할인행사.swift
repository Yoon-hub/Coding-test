import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    
    var buy: [String: Int] = [:]
    
    for (i, v) in want.enumerated() {
        buy[v] = number[i]
    }
    
    var j = 0, result = 0
    
    //print(buy)
    while j < discount.count - 9 {
    var dis: [String: Int] = [:]
        
    for i in j...j+9 {    
        if dis[discount[i]] == nil {
            dis[discount[i]] = 1
        } else {
            dis[discount[i]]! += 1
        }
    }
        if dis == buy {
            result += 1
        }
        j += 1
    }

    return result
}