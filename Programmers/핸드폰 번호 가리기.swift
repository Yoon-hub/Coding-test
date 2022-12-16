func solution(_ phone_number:String) -> String {
    
    var a = phone_number.suffix(4)
    print(a)
    var result = ""
    if phone_number.count == 4 {
        return String(a)
    } else {
    for i in 0...phone_number.count - 5 {
        result.append("*")
    }
    }

    
    return result + a
}