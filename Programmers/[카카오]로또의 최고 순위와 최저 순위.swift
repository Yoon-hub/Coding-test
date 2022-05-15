import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var score: [Int: Int] = [6:1, 5:2, 4:3, 3:4, 2:5, 1:6, 0:6 ]
    var result = Array(repeating: 0, count: 2)
    var zero = 0, correct = 0
    

    for i in lottos{
        if i == 0 {
            zero += 1
        }
        for j in win_nums{
            if i == j {
                correct += 1
            }
        }
    }
    
    result = [ score[correct+zero]!, score[correct]!]
    
    
    return result
    }

