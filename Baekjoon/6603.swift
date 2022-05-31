import Foundation


while true{
    
    let n = readLine()!.split(separator: " ").map{Int(String($0))!}
    if n[0] == 0 {break}
    let num = Array(n[1...n.count-1])
    var visited = Array(repeating: false, count : n[0])
    var arr : [Int] = []
    
    
    func dfs(_ start : Int){
        if arr.count == 6{
            print(arr.map{String($0)}.joined(separator: " "))
            return
        }
        for i in start..<num.count{
            if !visited[i]{
                visited[i] = true
                arr.append(num[i])
                dfs(i)
                arr.removeLast()
                visited[i] = false
            }
        }
    }
    
    dfs(0)
    print("")
}
