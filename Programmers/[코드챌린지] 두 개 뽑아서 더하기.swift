import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var arr : [Int] = []
    
    for i in 0..<numbers.count{
        for j in 0..<numbers.count{
            if !arr.contains(numbers[i] + numbers[j]) && i != j{
                arr.append(numbers[i]+numbers[j])
            }
        }
    }
    
    arr.sort()
    
    