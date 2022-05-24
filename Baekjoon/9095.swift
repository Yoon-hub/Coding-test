import Foundation

let n = Int(readLine()!)!
var i = 0

while i < n{
    
    let num = Int(readLine()!)!
    let arr = [1, 2, 3]
    var bundle : [Int] = []
    
    var count = 0
    
    
    func result(){
        if bundle.count > 11{
            return
        }
        else if num == bundle.reduce(0){$0+$1}{
            count += 1
            return
        }
        for i in arr{
            bundle.append(i)
            result()
            bundle.removeLast()
        }
        
    }
    
    result()
    print(count)
    i += 1
    
}
