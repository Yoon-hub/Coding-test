import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    
    var price1 = price 
    var arr = 0
    var i = 1
    var result : Int
    
    while i <= count{
        arr += i*price
        i += 1
    }
    
    
    if arr < money{
        return 0
    }else{
        return Int64(arr-money)
    }
}