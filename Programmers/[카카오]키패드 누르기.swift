import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result: String = ""
    var leftFinger = 10
    var rightFinger = 12

    for i in numbers{
        var num = i
        if num == 0{
            num = 11
        }
        
        if num == 1 || num == 4 || num == 7 {
            leftFinger = num
            result.append("L")
        }
        else if num == 3 || num == 6 || num == 9{

            rightFinger = num
            result.append("R")
        }
        else if num == 2 || num == 5 || num == 8 || num == 11 {
            let lcount  = (abs(num - leftFinger) / 3) + (abs(num - leftFinger) % 3)
            let rcount  = (abs(num - rightFinger) / 3) + (abs(num - rightFinger) % 3)
            
            if lcount > rcount{
                rightFinger = num
                result.append("R")
                }
            else if lcount < rcount{
                leftFinger = num
                result.append("L")
            } else if lcount == rcount{
                if hand == "right"{
                    rightFinger = num
                    result.append("R")
                } else if hand == "left" {
                    leftFinger = num
                    result.append("L")
                }
            }
            }
        }
    
    return result
}
