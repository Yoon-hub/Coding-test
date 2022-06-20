func solution(_ s:String) -> String {
    var result : String

    if s.count % 2 == 1{
        result = String(s[s.index(s.startIndex, offsetBy: s.count/2 )])
    } else{

        result = String(s[s.index(s.startIndex, offsetBy: s.count/2 - 1)]) + String(s[s.index(s.startIndex, offsetBy: s.count/2)])
    }


    return result
}