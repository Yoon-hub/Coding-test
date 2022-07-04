func solution(_ s:String, _ n:Int) -> String {
    let big = ["A", "B","C","D", "E" , "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    let small = ["a","b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    var arr = Array(s)
    
    for i in 0..<arr.count{
        if big.contains(String(arr[i])){
            var num = 0
            for j in 0..<big.count{
                if big[j] == String(arr[i]){
                    num = j
                }
            }
            if num + n > 25{
                arr[i] = String.Element(big[num+n - 26])
            }else{
                arr[i] = String.Element(big[num+n])
            }
        }
         else if small.contains(String(arr[i])){
             var num = 0
             for j in 0..<small.count{
                 if small[j] == String(arr[i]){
                     num = j
                 }
             }
             if num + n > 25{
                 arr[i] = String.Element(small[num+n - 26])
             }else{
                 arr[i] = String.Element(small[num+n])
             }
         }

        
    }
    

    
    return String(arr)
}