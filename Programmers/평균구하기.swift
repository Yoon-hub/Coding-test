func solution(_ arr:[Int]) -> Double {
    var sum = 0
    
    
    arr.forEach { sum += $0 }
    
    var result = Double(sum) / Double(arr.count)
    
    return result
}