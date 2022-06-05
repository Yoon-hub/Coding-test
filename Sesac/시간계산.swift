import Foundation

var time = 13300 //2시간 10분

let day = time / 1440
time = time % 1440 

let hour = time / 60
let minute = time % 60

print(day,hour, minute)