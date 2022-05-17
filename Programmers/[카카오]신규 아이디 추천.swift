import Foundation

func solution(_ new_id:String) -> String {
    var myID: String = new_id
    
    //1단계
    myID = myID.lowercased()
    
    //2단계
    var newID : String = ""
    
    for str in myID{
        if str.isLetter || str.isNumber || str == "-" || str == "_" || str == "." {
            newID.append(str)
        }
    }
    
    //3단계
    while newID.contains(".."){
        newID = newID.replacingOccurrences(of : "..", with: ".")
    }
  
    //4단계
    while newID.hasPrefix("."){
        newID.removeFirst()
    }
    while newID.hasSuffix("."){
        newID.removeLast()
    }
    
    //5단계
    if newID == ""{
        newID = "a"
    }
    
    //6단계
    if newID.count > 15{
        newID.removeSubrange(newID.index(newID.startIndex, offsetBy: 15) ..< newID.endIndex)
    }
    while newID.hasSuffix("."){
        newID.removeLast()
    }
    
    //7단계
    while newID.count < 3 {
        newID = newID + String(newID.last!)
    }
    
    return newID
}
