import Foundation

let NM = readLine()!.split(separator: " ").map{Int($0)!}
var num = readLine()!.split(separator: " ").map{Int($0)!}
var arr : [Int] = []
num.sort()

func result(){
    if arr.count == NM[1]{
        print(arr.map{String($0)}.joined(separator: " "))
        return
    }
    for i in num{
        if !arr.contains(i){
            arr.append(i)
            result()
            arr.removeLast()
        }
    }
    
}

result()
