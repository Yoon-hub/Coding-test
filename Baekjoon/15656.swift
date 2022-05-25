import Foundation

let NM = readLine()!.split(separator: " ").map{Int($0)!}
let N = NM[0]
let M = NM[1]
let num = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var arr : [String] = []
var resultStr = ""
var depth = 0

func result(_ depth : Int){
    if depth == M{
        resultStr += arr.joined(separator: " ") + "\n"
        return
    }
    for i in 0..<N{
        arr.append(String(num[i]))
        result(depth + 1)
        arr.removeLast()
        
    }
    
}


result(depth)
print(resultStr)
