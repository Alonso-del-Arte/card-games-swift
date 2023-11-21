//
//  Rank.swift
//  CardGames
//
//  Created by Alonso del Arte on 11/21/23.
//

import Foundation

enum Rank: CaseIterable {
    
    case ace
    
    case two
    
    case three
    
    case four
    
    case five
    
    case six
    
    case seven
    
    case eight
    
    case nine
    
    case ten
    
    case jack
    
    case queen
    
    case king
    
    func symbol() -> String {
        switch (self) {
        case .ace: "A"
        case .two: "2"
        case .three: "3"
        case .four: "4"
        case .five: "5"
        case .six: "6"
        case .seven: "7"
        case .eight: "8"
        case .nine: "9"
        case .ten: "10"
        case .jack: "J"
        case .queen: "Q"
        case .king: "K"
        }
    }
    
    func word() -> String {
        switch (self) {
        case .ace: "Ace"
        case .two: "Two"
        case .three: "Three"
        case .four: "Four"
        case .five: "Five"
        case .six: "Six"
        case .seven: "Seven"
        case .eight: "Eight"
        case .nine: "Nine"
        case .ten: "Ten"
        case .jack: "Jack"
        case .queen: "Queen"
        case .king: "Knight"
        }
    }
    
    func isRoyalCard() -> Bool {
        self == .jack || self == .queen || self == .king
    }
    
}
