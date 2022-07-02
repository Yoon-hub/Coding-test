func solution(_ n:Int) -> Int {
    var arr = Array(repeating : false, count : n+1)
    var i = 2
    
    arr[0] = true
    arr[1] = true

    while i <= n+1{
        for j in stride(from : i + i, to : n+1, by: i){
            arr[j] = true
        }
        i += 1
    }

    
    return arr.filter{$0 == false}.count
}