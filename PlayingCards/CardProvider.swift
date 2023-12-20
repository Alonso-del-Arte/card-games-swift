//
//  CardProvider.swift
//  CardGames
//
//  Created by Alonso del Arte on 12/18/23.
//

import Foundation

protocol CardProvider {
    
    /// Determines whether or not this card provider can give a card.
    /// - Returns: True if a card can be given, false if it has run out of
    /// cards.
    func hasNext() -> Bool
    
    /// Gives a playing card, provided there are cards left to give.
    /// - Returns: A playing card. For example, Three of Spades.
    func getNextCard() -> PlayingCard
    
}
