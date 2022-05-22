import Foundation

let num = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = num[0]
let m = num[1]
    
var arr : [Int] = []
var str = ""

func result(){
    if arr.count == m{
        str += arr.map{String($0)}.joined(separator: " ")
        str += "\n"
        return
    }
    for i in 1...n{
        arr.append(i)
        result()
        arr.removeLast()
    }
}

result()
print(str)
    
