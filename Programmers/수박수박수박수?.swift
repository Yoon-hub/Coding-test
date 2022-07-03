func solution(_ n:Int) -> String {
    
    var str = ""
    
    for i in 1...n{
        if i % 2 == 1 {
            str.append("수")
        } else {
            str.append("박")
        }
    }
    

    
    return str
}