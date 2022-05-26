import Foundation

var result : [Int] = []
var count = 0
var a = 0

func solution(_ nums:[Int]) -> Int {
    var answer = -1
    var sosu = Array(repeating: false, count: 3000)
    
    sosu[0] = true
    sosu[1] = true
    sosu[2] = true
    
    
    for i in 2..<3000{
        var j = i+i
        while j < 3000 {
            sosu[j] = true
            j += i
        }
    }
  //  print(sosu)
    dfs(sosu, nums)
    return a
}

func dfs(_ arr: [Bool],_ num: [Int]){
    if result.count == 3 && !arr[result.reduce(0){$0+$1}] && result.sorted() == result {
       // print(result)
        a += 1
        return
    }
    else if result.count == 3 {
        return
    }
    for i in num{
        if !result.contains(i){
            result.append(i)
            dfs(arr, num)
            result.removeLast()
        }
    }
}


