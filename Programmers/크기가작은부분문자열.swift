import Foundation

func solution(_ t:String, _ p:String) -> Int {
    
    var result = 0
    var arr = t.map {String($0)}

    var str = ""
    for (i, v) in arr.enumerated() {
        if str.count == p.count - 1 {
            str.append(v)
            var num = Int(str)!
            if num <= Int(p)! {
                result += 1
            }
            //print(str)
            str.removeFirst()
          
        } else {
          //  print(str)
            str.append(v)
        }

    }
    
    //print(result)
    
    return result
}