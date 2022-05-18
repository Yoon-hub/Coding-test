import Foundation

let num = readLine()!.split(separator: " ").map{Int($0)!}
let n = num[0]
let m = num[1]

var arr: [Int] = []
var arr2: [Array<Int>] = []

func result(){
    for i in 1...n{
        if arr.count == m {
            if !arr2.contains(arr.sorted()){
                arr2.append(arr)
            }
            return
        } else {
            if !arr.contains(i){
                arr.append(i)
                result()
                arr.removeLast()
            }
        }
    }
}

result()

for i in arr2{
    print(i.map{String($0)}.joined(separator:" "))
}
