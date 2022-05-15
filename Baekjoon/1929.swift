import Foundation
// 에라토스네스의 체
let num = readLine()!.split(separator: " ").map{Int($0)!}

let M = num[0]
let N = num[1]

var arr: [Int] = Array(repeating: 0, count: N + 1)

for i in 2...N{
    arr[i] = i
}

for i in 2...N{  // 만약 7이 들어오면 7+7한 14부터 21 28 35 이렇게 쭉 배열에서 빼준다
    var j = i+i
    while j <= N{
        arr[j] = 0
        j += i
    }
}

for i in M...N{
    if arr[i] != 0{
        print(arr[i])
    }
}