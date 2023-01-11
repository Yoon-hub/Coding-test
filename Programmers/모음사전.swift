import Foundation

func solution(_ word:String) -> Int {
    var arr = ["A", "E", "I", "O", "U"]
    var str = ""
    var dic: [String] = []
    var count = 0
    
    func dfs() {
    
        if str.count == 5 {
            return 
        }
    
        
        for i in arr {
            str.append(i)
            dic.append(str)
            dfs()
            str.removeLast()
        }
        
    }
    
    dfs()
    
    var index = 0
    
    for (i,v) in dic.enumerated() {
        if v == word {
            index = i
            break
        }
    }
    
    return index + 1
    
}