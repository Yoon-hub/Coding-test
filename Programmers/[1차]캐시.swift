func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    
    var cache: [String] = []
    var result = 0
    
    for i in cities {
        var c = i.uppercased()
        if cache.contains(c) {
            result += 1
            for (j,v) in cache.enumerated() {
                if v == c {
                    cache.remove(at: j)
                    cache.append(v)
                }
            }
        } else {
            result += 5
            if cacheSize != 0 {
            if cache.count < cacheSize {
                cache.append(c)
            } else  {
                cache.removeFirst()
                cache.append(c)
            }
        } 
        }
    }
    
    return result
}