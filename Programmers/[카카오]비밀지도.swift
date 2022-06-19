func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var number : [String] = []
    var number2 : [String] = []
 
    
    for i in arr1{
        var b = String(i, radix : 2)
        
        if b.count < n{
            while b.count < n {
                b = "0" + b
            }
            number.append(b)
        }else{
            number.append(b)
        }
    }
    
    for i in arr2{
        var b = String(i, radix : 2)
        
        if b.count < n{
            while b.count < n {
                b = "0" + b
            }
            number2.append(b)
        }else{
            number2.append(b)
        }
    }
    
    for i in 0..<n{
        var result : [String] = []
        var result2 : [String] = []
        var result3 = ""
        
        for j in number[i]{
            result.append(String(j))
        }
        
        for j in number2[i]{
            result2.append(String(j))
        }
        
        for j in 0..<n{
            if result[j] == "0" && result2[j] == "0"{
                result3.append(" ")
            }else{
                result3.append("#")
            }
        }
        answer.append(result3)
    }

    return answer
}



/* 잘하신분 알고리즘
func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var ret = [String]()
    for i in 0..<n {
        var retArray = String(arr1[i] | arr2[i], radix: 2)
        retArray = retArray.replacingOccurrences(of: "1", with: "#")
        ret.append(String.init(repeating: " ", count: n - retArray.count) + retArray.replacingOccurrences(of: "0", with: " "))
    }
    return ret
}
*/
