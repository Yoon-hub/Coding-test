import Foundation

func solution(_ s:String) -> Int {
    var result: [String] = []
    var arr = s.map {String($0)}
    
    var x: String?
    var sc = 0
    var nc = 0
    var first = true
    var cut: String = ""
    for (i, s) in arr.enumerated() {
        
        if first == true { 
            x = s 
            first = false
            cut.append(s)
            nc += 1
            if i == arr.count - 1  {
                result.append(cut)
                continue
            } else {
                continue    
            }
            
        } else {
            if x == s {
                nc += 1
            } else {
                sc += 1
            }
        }
        cut.append(s)
        
        if nc == sc || i == arr.count - 1 {
            result.append(cut)
            cut = ""
            first = true
            nc = 0
            sc = 0
        } 
        
    }
    print(result)
    return result.count
}