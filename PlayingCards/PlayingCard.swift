//
//  PlayingCard.swift
//  CardGames
//
//  Created by Alonso del Arte on 11/21/23.
//

import Foundation

struct PlayingCard: CustomStringConvertible {
    
    let rank: Rank
    
    let suit: Suit
    
    var description: String {
        "\(self.rank.word()) of \(self.suit.word())"
    }
    
    func shorthand() -> String {
        "\(self.rank.symbol())\(suit.rawValue)"
    }
    
    // TODO: Write tests for this
    func isRoyalCard() -> Bool {
        !self.rank.isRoyalRank()
    }
    
}
