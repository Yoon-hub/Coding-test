import Foundation

func solution(_ n:Int) -> Int {
    var x = n
    var result = 1000000
    
    while x > 0 {
        if n % x == 1{
            if x < result{
                result = x
            }
        }
        x -= 1
    }

    
    return result
}