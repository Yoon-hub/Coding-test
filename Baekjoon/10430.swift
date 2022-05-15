import Foundation

let num = readLine()!.split(separator: " ")
let numInt = num.map{Int($0)!}

let a = numInt[0]
let b = numInt[1]
let c = numInt[2]

print((a+b)%c)
print(((a%c) + (b%c))%c)
print((a*b)%c)
print(((a%c) * (b%c))%c)