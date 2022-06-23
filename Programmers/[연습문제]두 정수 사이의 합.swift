func solution(_ a:Int, _ b:Int) -> Int64 {
    var sum = 0
    
    if b > a {
        for i in a...b {
            sum += i
        }
    } else if a > b {
        for i in b...a{
            sum += i
        }
    } else if a == b{
        sum = a
    }

    return Int64(sum)
}


