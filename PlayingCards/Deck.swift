//
//  Deck.swift
//  CardGames
//
//  Created by Alonso del Arte on 12/18/23.
//

import Foundation

struct Deck : CardProvider {
    
    // TODO: Write tests for this
    func hasNext() -> Bool { false }
    
    // TODO: Write tests for this
    func getNextCard() -> PlayingCard {
        PlayingCard(rank: .ace, suit: .clubs)
    }
    
}
