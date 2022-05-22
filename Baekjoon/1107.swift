import Foundation

let goal = Int(readLine()!)!
let error = Int(readLine()!)!
var errorNum : [Int] = []

if error != 0{
    errorNum = readLine()!.split(separator: " ").map{Int($0)!}
}

var charOrder = abs(goal - 100)
var num = ""

func result(){
    if num.count == 6{
        return
    }
    for i in 0...9{
        if errorNum.contains(i){
            continue
        }else{  
            num = num + String(i)
            var countOrder = abs(goal - Int(num)!) + num.count
            charOrder = min(charOrder, countOrder)
            result()
            num.removeLast()
        }
    }
    
}

result()
print(charOrder)
