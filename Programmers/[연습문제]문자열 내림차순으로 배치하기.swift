func solution(_ s:String) -> String {
    var arr = Array(s)
    arr.sort(by: >)
    
    var result = String(arr)
    return result
    
}

