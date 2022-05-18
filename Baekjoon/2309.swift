import Foundation

var arr = Array(repeating: 0, count: 9)

for i in 0...8{
    arr[i] = Int(readLine()!)!
}
arr.sort()

var arr2: [Int] = []
var end = false

func result(){
    for i in 0...8{
        if end{
            return
        }
        if arr2.count == 7 && arr2.reduce(0){$0 + $1} == 100{
            arr2.map{print($0)}
            end = true
            return
        }
        else{
            if !arr2.contains(arr[i]){
                arr2.append(arr[i])
                result()
                arr2.removeLast()
            }
        }
    }
  
}

result()
