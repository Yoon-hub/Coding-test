func solution(_ x:Int) -> Bool {
    var a = String(x)
    var b = a.map {String($0)}
    var sum = 0
    
    for i in b {
        sum += Int(i)!
    }
    
    if x % sum == 0 {
        return true 
    } else {
        return false
    }
    
    return false
}