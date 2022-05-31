import Foundation

let n = Int(readLine()!)!
let num = readLine()!.split(separator : " " ).map{Int(String($0))!}
var visited = Array(repeating: false, count : n)
var arr : [Int] = []

var maxR = -1000000

func result(){
    if arr.count == n{
        
        maxR = max(check(arr), maxR)
        return
    }
    
    for i in 0..<num.count{
        if !visited[i]{
            visited[i] = true
            arr.append(num[i])
            result()
            arr.removeLast()
            visited[i] = false
        }
        
    }
}

func check(_ arr: [Int]) -> Int{
    var sum = 0
    for i in 0...arr.count-2{
        sum += abs(arr[i] - arr[i+1])
    }
    return sum
}

result()

print(maxR)
