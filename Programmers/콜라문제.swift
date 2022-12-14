import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    
    var get = 0
    var have = n
    
    while a <= have {
        var back = (have / a) * b
        get += back
        have = (have % a) + back
    }
    
    
    return get
}