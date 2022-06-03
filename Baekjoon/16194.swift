import Foundation

let n = Int(readLine()!)!
let num = readLine()!.split(separator: " ").map{Int($0)!}

var dp = Array(repeating: 100000000, count : n+1)

dp[0] = 0

for i in 1...n{
    for j in 1...i{
        dp[i] = min(dp[i], dp[i-j] + num[j-1])
    }
}


print(dp[n])
