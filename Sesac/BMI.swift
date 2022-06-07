import Foundation

let weight = Double.random(in: 40...90)
let height = Double.random(in: 1.5...1.9)

let BMI = weight / pow(height, 2)
print(BMI)

if BMI <= 18.5 {
    print("저체중")
} else if BMI > 18.5 && BMI <= 23 {
    print("정상")
} else if BMI > 23 && BMI <= 25{
    print("과체중")
} else if BMI > 25 && BMI < 30{
    print("비만")
} else if BMI >= 30 {
    print("고도비만")
} else{
    print("오류")
}


