import Foundation

func solution(_ topping:[Int]) -> Int {
    //특정위치를 쪼개서 같은 토핑종류가 있또록
    
    var i = 0, result = 0
    while i < topping.count - 1  {
        
        var aSet: Set<Int> = []
        var bSet: Set<Int> = []
        
        for j in 0...i {
            aSet.insert(topping[j])
        }
        
        for j in i+1...topping.count - 1 {
            bSet.insert(topping[j])
        }
        
        if aSet.count == bSet.count {
            result += 1
        }
        
    print(aSet, bSet)
        
        i += 1
    }
    
    
    
    return result
}