func solution(_ n:Int64) -> [Int] {
    var arr: [Int] = []
    var b = String(n).map{String($0)}
    for i in stride(from: b.count - 1, to: -1, by: -1 )  {
        arr.append(Int(b[i])!)
    }
    
    return arr
}