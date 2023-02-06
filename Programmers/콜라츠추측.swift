func solution(_ num:Int) -> Int {
    
    var n = num
    var count = 0
    while n != 1 && count <= 500{
        if n % 2 == 0 {
            n = n / 2
        } else {
            n = (n * 3) + 1
        }
        count += 1
    }
    
    
    return count >= 500 ? -1 : count 
}