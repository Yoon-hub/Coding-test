func solution(_ s:String) -> Bool {
    let numbers = ["0","1","2","3","4","5","6","7","8","9"]
    var result = true
    
    for i in s{
        if !numbers.contains(String(i)){
            result = false
        }
    }
    
    if s.count == 4 || s.count == 6{
        
    } else {
        result = false
    }
    
    return result
}