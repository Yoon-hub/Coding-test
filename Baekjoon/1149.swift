import Foundation

let n = Int(readLine()!)!

var rgpPrice = Array(repeating: [0, 0, 0], count: n+1)

for i in 1..<n+1 {
    rgpPrice[i] = readLine()!.split(separator: " ").map {Int($0)!}
}

var dp = Array(repeating: [0, 0, 0] , count: n+1)

for i in 1..<n+1 {
    dp[i][0] = min(dp[i-1][1], dp[i-1][2]) + rgpPrice[i][0]
    dp[i][1] = min(dp[i-1][0], dp[i-1][2]) + rgpPrice[i][1]
    dp[i][2] = min(dp[i-1][0], dp[i-1][1]) + rgpPrice[i][2]
}


print(dp[n].min()!)
