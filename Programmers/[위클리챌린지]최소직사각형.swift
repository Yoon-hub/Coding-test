import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var rowMax = 0
    var columnMax = 0
    var arr : [[Int]] = []
    
    for i in sizes{
        if i[0] > i[1]{
            arr.append([i[0],i[1]])
        }
        else {
            arr.append([i[1],i[0]])
        }
    }
    
    for i in arr{
        if i[0] > rowMax{
            rowMax = i[0]
        }
        if i[1] > columnMax{
            columnMax = i[1]
        }
    }
   

    return rowMax*columnMax
}