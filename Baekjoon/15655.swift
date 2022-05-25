import Foundation

let NM = readLine()!.split(separator: " ").map{Int($0)!}
var num = readLine()!.split(separator: " ").map{Int($0)!}
var arr : [Int] = []
var arr2 : [[Int]] = []
num.sort()

func result(){
    if arr.count == NM[1]{
        if !arr2.contains(arr.sorted()){
            arr2.append(arr)
        }
        
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
for i in arr2{
    print(i.map{String($0)}.joined(separator:" "))
}


