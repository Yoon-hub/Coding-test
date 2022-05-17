import Foundation

let num = readLine()!.split(separator: " ").map{Int($0)!}
let n = num[0]
let m = num[1]

var arr : [Int] = []

func result(){
    if arr.count == m {
        print(arr.map{String($0)}.joined(separator: " "))
    }
    for i in 1...n{
        if !arr.contains(i){
            arr.append(i)
            result()
            arr.removeLast()
        }
    }
    
}

result()

