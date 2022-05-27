import Foundation

let m = Int(readLine()!)!
var arr : [[Int]] = []
var visited = Array(repeating: false, count: m)

for i in 0..<m{
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var minResult = 9999

func dfs(depth : Int, start : Int){
    if depth == m/2{
        var team1 = 0
        var team2 = 0
        for i in 0..<m{
            for j in 0..<m{
                if !visited[i] && !visited[j]{
                    team2 += arr[i][j]
                }
                if visited[i] && visited[j]{
                    team1 += arr[i][j]
                }
            }
        }
        minResult = min(minResult, abs(team1 - team2))
        return
    }
    
    for i in start..<m{
        if !visited[i] {
            visited[i] = true
            dfs(depth: depth + 1, start: i)
            visited[i] = false
        }
    }
}

dfs(depth: 0, start: 0)

print(minResult)
