import Foundation

let n = Int(readLine()!)!
var arr : [Int] = []
var arr2 : [Int] = []

for i in stride(from: n, to: 0, by: -1){
    arr.append(i)
}

arr.reverse()

func dfs(){
    if arr2.count == n{
        print(arr2.map{String($0)}.joined(separator: " "))
        return
    }
    
    for i in arr{
        if !arr2.contains(i){
            arr2.append(i)
            dfs()
            arr2.removeLast()
        }
    }
}

dfs()
