import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result = 0    
    var box:[[Int]] = []
    var arr = score.sorted { $0 > $1 }
    
    var oneBox:[Int] = []
    
    for (i,v) in arr.enumerated() {
        oneBox.append(v)
        if (i + 1) % m == 0  {
            box.append(oneBox)
            oneBox = []
        } 
    }
    
    for i in box {
       let a = i.sorted{ $0 < $1 }
        result += a[0] * m 
    }
    
    return result
}