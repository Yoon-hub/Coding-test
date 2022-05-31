import Foundation

var n = Int(readLine()!)!
var dp = Array(repeating: 0, count: n+1) //몇번 움직였는지의 결과를 저장하기위한 배열

for i in 2..<n+1 { //i는 현재 최단경로를 구하고자하는
    dp[i] = dp[i-1] + 1
    if i % 3 == 0 {
        dp[i] = min(dp[i], dp[i/3] + 1)
    }
    if i % 2 == 0 {
        dp[i] = min(dp[i], dp[i/2] + 1)
    }
    
}
print(dp[n])


    