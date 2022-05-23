import Foundation

let num = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map{Int($0)!}

var count = 0
var arr = Array(repeating: true, count: 1001)

arr[0] = false
arr[1] = false

for i in 2...1000{
    if arr[i] == false{
        continue
    }
    for j in stride(from: i+i, to: 1001, by: i){
        arr[j] = false
    }
}

for i in numbers{
    if arr[i] == true {
        count += 1
    }
}

print(count)
