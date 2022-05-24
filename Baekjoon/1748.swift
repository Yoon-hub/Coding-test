import Foundation

let num = Int(readLine()!)!
var count = 0
var i = 1

while i <= num {
    count += num - i + 1
    i = i * 10
}

print(count)
