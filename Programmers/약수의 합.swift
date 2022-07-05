func solution(_ n:Int) -> Int {
    var arr : [Int] = []
    
    if n == 0 {
        return 0
    } else {
    for i in 1...n{
        if n % i == 0{
            arr.append(i)
        }
    }
    
    
        return arr.reduce(0){$0 + $1}
    }
}