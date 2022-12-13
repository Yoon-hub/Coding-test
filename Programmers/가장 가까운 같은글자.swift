import Foundation

func solution(_ s:String) -> [Int] {
    var arr: [String] = []
    var result: [Int] = []
    
    for i in 0...s.count-1 {
        if arr.contains(s[i]!) == false {
            result.append(-1)
            arr.append(s[i]!)
        } else {
            var closeIndex = 0
            for j in 0...arr.count - 1 {
                if arr[j] == s[i] { closeIndex = j }     
            }
            result.append(i - closeIndex)
            arr.append(s[i]!)
        }
    }
    
    return result
}


extension String {
    subscript(idx: Int) -> String? {
        let result = index(startIndex, offsetBy: idx)
        return String(self[result])
    }
}