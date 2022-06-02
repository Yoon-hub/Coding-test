import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var arr : [Int] = []
    
    for i in left...right{
        var count = 0
        for j in 1...i{
            if i % j == 0 {
                count += 1
            } 
        }
        if count % 2 == 0{
            arr.append(i)
        }
        else{
            arr.append(-i)
        }
        count = 0
    }
    
    

    
    return arr.reduce(0){$0 + $1}
}