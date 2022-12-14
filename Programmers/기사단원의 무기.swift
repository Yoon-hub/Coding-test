import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var attack = [Int](repeating: 0, count: number+1)

    for i in 1...number {
        var c = i

        while c <= number {
            attack[c] += 1
            c += i
        }
    }
    
    for (i, v) in attack.enumerated() {
        if v > limit { attack[i] = power }
    }
    
    return attack.reduce(0, +)
}