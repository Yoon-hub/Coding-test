import Foundation

let N = Int(readLine()!)!

var dp = Array(repeating:1, count: 10)

for _ in 1..<N {
    for i in 1...9 {
        dp[i] = (dp[i-1] + dp[i])%10007
    }
}

print(dp.reduce(0, {$0 + $1})%10007)

