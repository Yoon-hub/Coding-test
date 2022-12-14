import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var dic = [1:3, 2:2, 3:1, 4:0, 5:-1, 6:-2, 7:-3]
    
    var an = 0
    var mj = 0
    var cf = 0
    var rt = 0
    var result: String = ""
    
    for (i,v) in survey.enumerated() {
        if v == "AN" || v == "NA" {
            (v == "AN") ? (an += dic[choices[i]]!) : (an -= dic[choices[i]]!)
        } else if v == "MJ" || v == "JM" {
            (v == "MJ") ? (mj += dic[choices[i]]!) : (mj -= dic[choices[i]]!)
        } else if v == "CF" || v == "FC" {
            (v == "CF") ? (cf += dic[choices[i]]!) : (cf -= dic[choices[i]]!)
        } else if v == "RT" || v == "TR" {
            (v == "RT") ? (rt += dic[choices[i]]!) : (rt -= dic[choices[i]]!)
        } 
    }
    
    rt >= 0 ? result.append("R") : result.append("T")
    cf >= 0 ? result.append("C") : result.append("F")
    mj > 0 ? result.append("M") : result.append("J")
    an >= 0 ? result.append("A") : result.append("N")

    
    return result
}