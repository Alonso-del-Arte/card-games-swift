//
//  PlayingCardTests.swift
//  CardGamesTests
//
//  Created by Alonso del Arte on 11/21/23.
//

import XCTest

final class PlayingCardTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDescription() {
        for suit in Suit.allCases {
            for rank in Rank.allCases {
                let card: PlayingCard = PlayingCard(rank: rank, suit: suit)
                let expected = "\(rank.word()) of \(suit.word())"
                let actual = card.description
                XCTAssertEqual(expected, actual)
            }
        }
    }
    
    func testShorthand() {
        for suit in Suit.allCases {
            for rank in Rank.allCases {
                let card: PlayingCard = PlayingCard(rank: rank, suit: suit)
                let expected = "\(rank.symbol())\(suit.rawValue)"
                let actual = card.shorthand()
                XCTAssertEqual(expected, actual)
            }
        }
    }
    
    func testRoyalCard() {
        for suit in Suit.allCases {
            for rank in Rank.allCases {
                let card: PlayingCard = PlayingCard(rank: rank, suit: suit)
                let message = rank.isRoyalRank() 
                ? "\(card.shorthand()) should be a royal card"
                : "\(card.shorthand()) should not be a royal card"
                XCTAssertTrue(card.isRoyalCard() == rank.isRoyalRank(), message)
            }
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
