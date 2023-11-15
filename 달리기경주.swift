import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    
    var players = players
    var playersRank: [String: Int] = [:]
    
    for (index, player) in players.enumerated() {
        playersRank[player] = index
    }
    
    for call in callings {
        guard let index = playersRank[call] else { return [] }
        
       // players.swapAt(index, index - 1)
        
        playersRank[players[index]] = index
        playersRank[players[index -1 ]] = index - 1
        
    }
    
    return players
}