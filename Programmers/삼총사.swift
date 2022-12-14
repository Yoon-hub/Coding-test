import Foundation

func solution(_ number:[Int]) -> Int {
    var ans = 0

    for i in 0..<number.count {
        for j in i+1..<number.count {
            for z in j+1..<number.count {
                if number[i] + number[j] + number[z] == 0 { ans += 1 }
            }
        }
    }

    return ans
}
