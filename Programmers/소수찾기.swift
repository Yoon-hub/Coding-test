import Foundation

func solution(_ numbers:String) -> Int {
    var num = numbers.map {String($0)}
    print(num)
    
    var n = 1000
    var numArray = Array(repeating: 0, count: n + 1)
    
    for i in 2...n {
        numArray[i] = i
    }
    
   for i in 2...n {
    if numArray[i] == 0 {
        continue
    }
    
        for j in stride(from: i+i, through: n, by: i) {
            numArray[j] = 0;
        }
    }
    
    
    var visited = Array(repeating: false, count: num.count)
    var result = ""
    var ans: Set<Int> = []
    func dfs() {
        for i in 0...num.count - 1 {
            if !visited[i] {
                visited[i] = true
                result.append(num[i])
                dfs()
                result.removeLast()
                visited[i] = false
            }
        }
        if numArray[Int(result) ?? 0] != 0 {
            ans.insert(Int(result) ?? 0)
        }

    }
    
    dfs()
    print(ans)
    return ans.count
}

