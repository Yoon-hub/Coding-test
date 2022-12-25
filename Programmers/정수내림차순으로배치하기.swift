func solution(_ n:Int64) -> Int64 {
    var m = String(n)
    var x = m.map{String($0)}
    x.sort(by: >)
    var e = x.joined(separator: "")

    
    return Int64(e)!
}