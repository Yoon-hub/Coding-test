import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var arr: [Int] = []
    
    for (i,v) in progresses.enumerated() {
        var pro = v
        var day = 0
        
        while pro < 100 {
            pro += speeds[i]    
            day += 1
        }
        arr.append(day)
    }
    
        print(arr)
    
    var result: [Int] = []
    var count = 1
    
    var a = arr.first!
    arr.removeFirst()
    
    while arr.count != 0 {
        if a >= arr.first! {
            count += 1
            arr.removeFirst()
        } else {
            result.append(count)
            count = 1
            a = arr.first!
            arr.removeFirst()
        }
    }
    result.append(count)

    return result
}