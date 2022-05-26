import Foundation

func solution(_ numbers:[Int]) -> Int {
    let arr = numbers
    var result = 0
    
    for i in 0...9{
        if !arr.contains(i){
            result += i
        }    
    }
    
    
    return result
}