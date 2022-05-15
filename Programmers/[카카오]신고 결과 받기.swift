import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reportResult: [String: Set<String>] = [:]  
    var reportCount:[Int] = Array(repeating:0, count: id_list.count)
    var user: [String: Int] = [:]
    
    id_list.enumerated().forEach{
        user[$1] = $0
    }
    
    for r in report {
        let split = r.split(separator: " ")
        let reporter = String(split[0])
        let reported = String(split[1])
        
        if reportResult[reported] == nil {
            reportResult[reported] = [reporter]
        }
        else{
            reportResult[reported]!.insert(reporter)
        }
    }
    
    for info in reportResult{
        if info.value.count >= k {
            for id in info.value{
                reportCount[user[id]!] += 1
            }
        }
    }
    
    return reportCount
}
