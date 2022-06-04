import Foundation

let n = Int(readLine()!)!
var dp = [0,1]

for _ in 1..<n{
    dp = [dp[0]+dp[1],dp[0]]
}

print(dp[0]+dp[1])
