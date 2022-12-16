import Foundation

func solution(_ expression:String) -> Int64 {
    
    var arr: [String] = []
    
    var ans = ""
    for (i,v) in expression.enumerated() {
        if v == "*" || v == "+" || v == "-" {
            arr.append(ans)
            arr.append(String(v))
            ans = ""
        } else {
            ans.append(v)
        }
        
        if i == expression.count - 1 {
            arr.append(ans)
        }
    }
    
    var max = 0
    
    for i in 0...5 {
        var a = arr
        if i == 0 {
           a = x(a)
           a = plus(a)
           a = minus(a)

        } else if i == 1 {
            a = x(a)
            a = minus(a)
            a = plus(a)
        } else if i == 2 {
            a = plus(a)
            a = x(a)
            a = minus(a)
        } else if i == 3 {
            a = plus(a)
            a = minus(a)
            a = x(a)
        } else if i == 4 {
            a = minus(a)
            a = plus(a)
            a = x(a)
        } else if i == 5 {
            a = minus(a)
            a = x(a)
            a = plus(a)
        }
        print(a)
        if max < abs(Int(a[0])!) {
            max = abs(Int(a[0])!)
        }
    }
    
    print(max)
    
    
    return Int64(max)
}

func x(_ arr: [String]) -> [String] {
    var arr = arr
        while arr.contains("*") {
    for i in 0...arr.count - 1 {
        if arr[i] == "*" {
            var result = String(Int(arr[i-1])! * Int(arr[i+1])!)
            arr.remove(at:i-1)
            arr.remove(at:i-1)
            arr.remove(at:i-1)
            arr.insert(result, at: i-1)
            break
        }
    }
    }
    
    return arr
}

func plus(_ arr: [String]) -> [String] {
    var arr = arr
        while arr.contains("+") {
    for i in 0...arr.count - 1 {
        if arr[i] == "+" {
            var result = String(Int(arr[i-1])! + Int(arr[i+1])!)
            arr.remove(at:i-1)
            arr.remove(at:i-1)
            arr.remove(at:i-1)
            arr.insert(result, at: i-1)
            break
        }
    }
    }
    
    return arr
}

func minus(_ arr: [String]) -> [String] {
    var arr = arr
        while arr.contains("-") {
    for i in 0...arr.count - 1 {
        if arr[i] == "-" {
            var result = String(Int(arr[i-1])! - Int(arr[i+1])!)
            arr.remove(at:i-1)
            arr.remove(at:i-1)
            arr.remove(at:i-1)
            arr.insert(result, at: i-1)
            break
        }
    }
    }
    
    return arr
}