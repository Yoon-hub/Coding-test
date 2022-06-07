import Foundation

let n = Int(readLine()!)!
var arr : [Int] = []

for _ in 0..<n{
    var input = readLine()!.split(separator: " ").map{String($0)}

    if input[0] == "push_front"{
        arr.insert(Int(input[1])!, at: 0)
    }
    else if input[0] == "push_back"{
        arr.append(Int(input[1])!)
    }
    else if input[0] == "pop_front"{
        if arr.isEmpty{
            print(-1)
        } else {
            print(arr[0])
            arr.remove(at:0)
        }
    }
    else if input[0] == "pop_back"{
        if arr.isEmpty{
            print(-1)
        } else {
            print(arr.last!)
            arr.removeLast()
        }
    }
    else if input[0] == "size"{
        print(arr.count)
    }
    else if input[0] == "empty"{
        if arr.isEmpty{
            print(1)
        } else {
            print(0)
        }
    }
    else if input[0] == "front"{
        if arr.isEmpty{
            print(-1)
        } else {
            print(arr[0])
        }
    }
    else if input[0] == "back"{
        if arr.isEmpty{
            print(-1)
        } else {
            print(arr.last!)
        }
    }

}

