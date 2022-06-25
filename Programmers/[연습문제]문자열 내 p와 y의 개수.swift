import Foundation

func solution(_ s:String) -> Bool
{

    var pcount = 0
    var ycount = 0
    var str = s.lowercased()
    
    for i in str{
        if i == "p"{
            pcount += 1
        }
        else if i == "y"{
            ycount += 1
        }
    }
    
    return pcount == ycount ? true : false
}