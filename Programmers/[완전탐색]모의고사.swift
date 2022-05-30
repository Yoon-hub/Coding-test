import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let oneAnswer = [1,2,3,4,5]
    let twoAnswer = [2,1,2,3,2,4,2,5]
    let thrAnswer = [3,3,1,1,2,2,4,4,5,5]
    
    var one : [[Int]] = []
    var two : [[Int]] = []
    var thr : [[Int]] = []
    
    for i in 0...answers.count/5{
        one.append(oneAnswer)
        two.append(twoAnswer)
        thr.append(thrAnswer)
    }
    var newone = one.flatMap{$0}
    var newtwo = two.flatMap{$0}
    var newthr = thr.flatMap{$0}
    
    var onec = 0, twoc = 0, thrc = 0

    for i in 0..<answers.count{
        if answers[i] == newone[i]{
            onec += 1
        }
        if answers[i] == newtwo[i]{
            twoc += 1
        }
        if answers[i] == newthr[i]{
            thrc += 1
        }
    }
    var result : [Int] = []
    if onec > twoc && onec > thrc{
        result.append(1)
    } else if twoc > onec && twoc > thrc{
        result.append(2)
    } else if thrc > onec && thrc > twoc{
        result.append(3)
    } else if onec == twoc && onec > thrc{
        result.append(1)
        result.append(2)
    } else if onec == thrc && onec > twoc {
        result.append(1)
        result.append(3)
    } else if thrc == twoc && twoc > onec{
        result.append(2)
        result.append(3)
    } else if thrc == onec && onec == twoc{
        result.append(1)
        result.append(2)
        result.append(3)
    }
    return result
}

/* 다른사람 풀이
import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let answer = (
        a: [1, 2, 3, 4, 5], // index % 5
        b: [2, 1, 2, 3, 2, 4, 2, 5], // index % 8
        c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] // index % 10
    )
    var point = [1:0, 2:0, 3:0]

    for (i, v) in answers.enumerated() {
        if v == answer.a[i % 5] { point[1] = point[1]! + 1 }
        if v == answer.b[i % 8] { point[2] = point[2]! + 1 }
        if v == answer.c[i % 10] { point[3] = point[3]! + 1 }
    }

    return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max() }.map{ $0.key }
}

*/