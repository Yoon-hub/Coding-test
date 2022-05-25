//시간초과 안나려고 visited 사용함

import Foundation

let num = readLine()!.split(separator: " ").map{Int($0)!}
let L = num[0]
let C = num[1]
var word = readLine()!.split(separator: " ").map{String($0)}.sorted()
var depth = 0
var visited = Array(repeating: false, count: C)
var arr : [String] = []


let vowel = ["a","e","i","o","u"]
let consonant = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]

func dfs(_ start: Int){
    if arr.count == L{
        var acount = false
        for i in vowel{
            if arr.contains(i){
                acount = true
            }
        }
        var ccount = 0
        for i in consonant{
            if arr.contains(i){
                ccount += 1
            }
        }
        if acount && ccount >= 2 {
            print(arr.joined(separator: ""))
        }
        return
    }
    

    for i in start..<C{
        if !visited[i]{
            visited[i] = true
            arr.append(word[i])
            dfs(i)
            visited[i] = false
            arr.removeLast()
        }
    }
}

dfs(0)

