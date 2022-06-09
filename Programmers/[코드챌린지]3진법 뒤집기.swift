import Foundation

func solution(_ n:Int) -> Int {
    var a = String(n, radix:3)
    var b = Int(String(a.reversed()), radix:3)!    

    return b
    
}