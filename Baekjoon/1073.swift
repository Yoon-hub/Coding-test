import Foundation

let count = Int(readLine()!)!
let num = readLine()!.split(separator: " ").map{Int($0)!}

print(num.max()! * num.min()!)
