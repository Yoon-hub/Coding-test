import Foundation

let num = Int(readLine()!)!
var arr : [[Character]] = []

for i in 0...num - 1{
    arr.append(Array(readLine()!))
}

var max = 0

for i in 0...num - 1{
    for j in 0 ... num - 2{
        arr[i].swapAt(j, j+1)
        check(arr: arr)
        arr[i].swapAt(j+1, j)
        
        var temp : Character
        temp = arr[j][i]
        arr[j][i] = arr[j+1][i]
        arr[j+1][i] = temp
        
        check(arr: arr)
        
        temp = arr[j][i]
        arr[j][i] = arr[j+1][i]
        arr[j+1][i] = temp
    }
}

func horizontal(array: [[Character]]) -> Int{
    var count = 1
    var max = 0
    
    for i in 0...num - 1{
        for j in 0 ... num - 2{
            if arr[i][j] == arr[i][j+1]{
                count += 1
                if count > max{
                    max = count
                }
            }
            else{
                count = 1
            }
        }
        count = 1
    }
    
    return max
}

func vertical(array: [[Character]]) -> Int {
    var count = 1
    var max = 0
    for i in 0...num - 1{
        for j in 0...num - 2{
            if arr[j][i] == arr[j+1][i]{
                count += 1
                if count > max{
                    max = count
                }
            }
            else{
                count = 1
            }
        }
        count = 1
    }
    return max
}

func check(arr : [[Character]]){
    var count = 0
    if horizontal(array: arr) > vertical(array: arr){
        count = horizontal(array: arr)
    } else {
        count = vertical(array: arr)
    }
    if count > max {
        max = count
    }
}

print(max)
