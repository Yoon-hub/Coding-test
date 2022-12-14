import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var x = X.map{String($0)}
    var y = Y.map{String($0)}
    
    var xcount = Array(repeating: 0, count:11)
    var ycount = Array(repeating: 0, count:11)
    
    var result: [String] = []
    
    for i in x {
        xcount[Int(i)!] += 1
    }
    
    for i in y {
        ycount[Int(i)!] += 1
    }
    
    for i in 0...10 {
        let mina = min(xcount[i], ycount[i])
        var j = 0
        while j < mina {
            result.append(String(i))
            j += 1
        }
    }
    
    if result.count == 0 {
        return "-1"
    } else {
        result.sort {$0 > $1}
        
        while result.count > 1 && result[0] == "0" {
            result.removeFirst()
        }
        let b = result.joined(separator: "")
        

        return b
    }
    
}