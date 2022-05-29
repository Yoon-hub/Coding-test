import Foundation

let num = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = num[0]
let sum = num[1]

let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var visited = Array(repeating: false , count: n)

var arr2 : [Int] = []
var count = 0

func result(start: Int){
    if arr2.reduce(0){$0+$1} == sum && !arr2.isEmpty{
        count += 1
        
    }
    for i in start..<n {
        if !visited[i]{
            visited[i] = true
            arr2.append(arr[i])
            result(start: i)
            visited[i] = false
            arr2.removeLast()
        }
    }
}

result(start: 0)
print(count)
