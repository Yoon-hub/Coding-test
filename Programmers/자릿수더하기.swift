import Foundation

func solution(_ n:Int) -> Int
{   
    var num = String(n).map{Int(String($0))!}
    
    return num.reduce(0) { $0 + $1 }
}