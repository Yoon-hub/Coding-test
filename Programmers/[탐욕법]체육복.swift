import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var arr = Array(repeating: 1 , count : n)
    
    lost.forEach{
        arr[$0-1] -= 1
    }
    
    reserve.forEach{
        arr[$0-1] += 1
    }

    for i in 0..<arr.count{
        if arr[i] == 2 && i != 0 && i != arr.count - 1 {
            if arr[i-1] == 0{
                arr[i] -= 1
                arr[i-1] += 1
            }else if arr[i+1] == 0{
                arr[i] -= 1
                arr[i+1] += 1
            }
        }
        else if i == 0 && arr[i] == 2{
            if arr[i+1] == 0{
                arr[i] -= 1
                arr[i+1] += 1
            }
        }
        else if i == arr.count - 1 && arr[i] == 2{
            if arr[i-1] == 0{
                arr[i] -= 1
                arr[i-1] += 1
            }
        }
    }
    
    
    return arr.filter{$0 >= 1}.count
}