func solution(_ a:Int, _ b:Int) -> String {
    let days = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
    let months = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var now = 5
    
    for i in 0..<a-1{
        now += months[i]
    }
    
    now += b - 1
    

    
    return  days[now%7]
}