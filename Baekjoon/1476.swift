import Foundation

let num = readLine()!.split(separator: " ").map{Int($0)!}

var count = 1
var E = 1, S = 1, M = 1

while true{
    if E == 16{
        E = 1
    }
    if S == 29{
        S = 1
    }
    if M == 20{
        M = 1
    }
    if E == num[0] && S == num[1] && M == num[2]{
        break
    }
    count += 1
    E += 1
    S += 1
    M += 1
}
print(count)
