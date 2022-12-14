import Foundation

func solution(_ food:[Int]) -> String {
    
    var a = food.map { $0 % 2 == 0 ? $0 : ($0 - 1) }
    a.removeFirst()
    print(a)
    var arr = [0]
    
    for i in stride(from: a.count - 1, to: -1 , by: -1) {
        if a[i] != 0 {
       for _ in 0...(a[i]/2)-1  {
           arr.insert(i+1, at: 0)
           arr.append(i+1)
       }
        }
    }

    return arr.map{String($0)}.joined(separator: "")
}