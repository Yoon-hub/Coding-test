func solution(_ s:String) -> String {
    
    var arr = s.split(separator: " ")
    var arr2 = ""
    
    for i in arr {
        for (j, v) in i.enumerated() {
            if j % 2 == 0 {
                arr2.append(v.uppercased())
            } else {
                arr2.append(v)
            }
            
            if j == i.count - 1 {
                arr2.append(" ")
            }
        }
    }
    
    arr2.removeLast()
    return arr2
}