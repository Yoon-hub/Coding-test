import Foundation

let n = Int(readLine()!)!
var qeue: [Int] = []

for _ in 0..<n{
    let num = readLine()!.split(separator: " ").map{String($0)}
    
    if num[0] == "push"{
        qeue.append(Int(num[1])!)
    }
    if num[0] == "front"{
        if qeue.isEmpty{
            print(-1)
        }else{
            print(qeue[0])
        }
    }
    if num[0] == "back"{
        if qeue.isEmpty{
            print(-1)
        }else{
            print(qeue[qeue.endIndex - 1])
        }
    }
    if num[0] == "size"{
        print(qeue.count)
    }
    if num[0] == "empty"{
        if qeue.isEmpty{
            print(1)
        }else{
            print(0)
        }
    }
    if num[0] == "pop"{
        if qeue.isEmpty{
            print(-1)
        }else{
            print(qeue[0])
            qeue.remove(at:0)
        }
    }
    
}


