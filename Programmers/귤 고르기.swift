import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    //서로 다른 종류의 귤을 최소화 하고싶다 == 같은 종류가 많은거 부터 담는다
    var mc = Array(repeating: 0, count: tangerine.max()! + 1)
    
    for i in tangerine {
        mc[i] += 1
    }
    
    var result = 0, box = 0
    
    for (i,v) in mc.sorted(by: >).enumerated() {
        box += v
        result += 1
        if box >= k { break }
    }
    
    return result
}