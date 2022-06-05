let money = 25000
let product = 8600

var change = money - product
var moneyType = [50000, 10000, 5000, 1000, 500, 100]
var moneyCount = Array(repeating: 0, count: moneyType.count)

for (i, v) in moneyType.enumerated(){
    moneyCount[i] = change / v
    change = change % v
}
