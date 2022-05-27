import Foundation

let day = Int(readLine()!)!
var t : [Int] = []
var p : [Int] = []
var dp = Array(repeating: 0, count: 1000)

for i in day+1...999{
    dp[i] = -10000
}

for i in 0..<day{
    var num = readLine()!.split(separator: " ").map{Int($0)!}
    t.append(num[0])
    p.append(num[1])
}

for i in stride(from: day-1, to: -1, by: -1){
    dp[i] = max(dp[i + 1], dp[i + t[i]] + p[i])
}
    

print(dp.max()!)


