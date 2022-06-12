import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var arr = d
    var arr2 : [Int] = []
    arr.sort()
    
    for i in arr{
        if arr2.reduce(0){$0 + $1} + i <= budget{
            arr2.append(i)
        }
    }
    

    return arr2.count
}