import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result : [Int] = []

    for i in commands{
        var arr = array
        var newArray = arr[i[0]-1...i[1]-1].sorted()
        
        result.append(newArray[i[2]-1])
    }
    
    
//    print(result)
    return result
}