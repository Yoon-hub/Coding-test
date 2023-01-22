import Foundation

var a = Int(readLine()!)!
var b = readLine()!.split(separator: " ").map{Int($0)!}

b.sort { $0 < $1}
var result = 0

for i in 0...a-1 {
    print(i)
    for j in 0...i {
        result += b[j]
    }
}

print(result)
