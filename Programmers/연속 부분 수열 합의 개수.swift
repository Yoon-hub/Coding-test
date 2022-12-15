import Foundation

func solution(_ elements:[Int]) -> Int {
    
    var result: Set<Int> = []
    var pele = elements
    
    for i in 0...elements.count - 1 {
        pele.append(elements[i])
    }
 
    for t in 1...elements.count {
    for i in 0...elements.count {
        var a = i
        var sum = 0
        var j = 0
        while j < t {
            //print(pele[a])
            sum += pele[a]
            j += 1
            a += 1
        }
        result.insert(sum)
    }
    }

    
    return result.count
}