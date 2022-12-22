func solution(_ arr:[Int]) -> [Int] {
    var small = arr.sorted(by: <)[0]
    var arr2 = arr
    
    for (i, v) in arr2.enumerated() {
        if small == v {
            arr2.remove(at: i)
        }
    }
    
    //print(arr2)
    return arr2.count == 0 ? [-1] : arr2
}