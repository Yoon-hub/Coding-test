import Foundation

var num = Int(readLine()!)!
var b: [Int] = []
var result: [Int] = []

for _ in 0..<num {
    b.append(Int(readLine()!)!)
}

for i in b {
    cycle(n: i)
}



func cycle(n: Int) {
    
    var arr: [Int] = []
    var answer: [[Int]] = []
    let a = [1, 2, 3]
    
    
    func dfs() {
        if arr.reduce(0, {$0 + $1}) >= n {
            if arr.reduce(0, {$0 + $1}) == n {
                answer.append(arr)
            }
            return
        }
        
        for i in a {
            arr.append(i)
            dfs()
            arr.removeLast()
        }
        
    }
    
    dfs()
    result.append(answer.count)
}

for i in result {
    print(i)
}



-------- dp -----
var num = Int(readLine()!)!
var dp = Array(repeating: 0, count: 12)

dp[1] = 1
dp[2] = 2
dp[3] = 4

for i in 4..<12 {
    dp[i] = dp[i-3] + dp[i-2] + dp[i-1]
}


for _ in 0..<num {
    var a = Int(readLine()!)!
    print(dp[a])
}