import Foundation

let MAX = 100000

let input = readLine()!.split{$0 == " "}.map{Int($0)!}
let N = input[0]
let K = input[1]
var result = 0

if N == K {
    print(result)
} else{
    var queue : [(dot: Int, sec: Int)] = [(N,0)]
    var visited = Array(repeating: false, count : MAX + 1)
    var index = 0
    
outLoop: while index < queue.count{
        for i in 0..<3{
            var nextDot = 0
            switch i{
            case 0: nextDot = queue[index].dot - 1
            case 1: nextDot = queue[index].dot + 1
            default: nextDot = queue[index].dot * 2
            }
            
            if nextDot == K{
                result = queue[index].sec + 1
                break outLoop
            } else {
                if nextDot < 0 || nextDot > MAX || visited[nextDot]{
                    continue
                }
                visited[nextDot] = true
                queue.append((nextDot, queue[index].sec+1))
            }
        }
      index += 1
    }
    print(result)
}


