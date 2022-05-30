import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var fail : [Int:Double] = [:]
    var tries = Array(repeating: 0, count: N + 1)

      for i in stages {
          for j in 0..<i {
              tries[j] += 1
          }
      }
    
    for i in 0..<N{
        fail[i+1] = Double(tries[i]-tries[i+1]) / Double(tries[i])
    }

    return fail.sorted{$0.key < $1.key}.sorted{$0.value > $1.value}.map{$0.key}
    
    
}