import Foundation

func solution(_ s:String) -> [Int] {
    var str = s
    str = str.replacingOccurrences(of: "{", with: "")
    str.removeLast()
    var arr = str.split(separator: "}")
    
    var arr2: [[String]] = []
    
    for (i,v) in arr.enumerated() {
        var a = v.split(separator: ",").map {String($0)}
        arr2.append(a)
    }

    var result: [Int] = []
    
   /// print(arr2)
    
    var i = 1
    while i <= arr2.count {
        for j in arr2 {
            if j.count == i {
                for k in j {
                    if result.contains(Int(k)!) == false {
                        result.append(Int(k)!)
                    }
                }
            }
        }
        i += 1
    }
    
  
    
    return result
}