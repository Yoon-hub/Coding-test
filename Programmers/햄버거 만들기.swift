import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var result = 0
    var stack: [Int] = []
    
    for i in ingredient {
        stack.append(i)
        let suffix = stack.suffix(4)
        if suffix == [1,2,3,1] {
            result += 1
            stack.removeLast(4)
        }
    }
    


    return result
}