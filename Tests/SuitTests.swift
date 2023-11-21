//
//  SuitTests.swift
//  CardGames
//
//  Created by Alonso del Arte on 11/9/23.
//

import XCTest

final class SuitTests: XCTestCase {

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }

    func testSuitSymbol() {
        for suit in Suit.allCases {
            let expected: Character = switch (suit) {
            case .spades: 
                "\u{2660}\u{fe0f}"
            case .diamonds:
                "\u{2666}\u{fe0f}"
            case .clubs:
                "\u{2663}\u{fe0f}"
            case .hearts:
                "\u{2665}\u{fe0f}"
            }
            let actual: Character = suit.rawValue
            XCTAssertEqual(expected, actual)
        }
    }
    
    func testWord() {
        for suit in Suit.allCases {
            let expected: String = switch (suit) {
            case .spades: "Spades"
            case .diamonds: "Diamonds"
            case .clubs: "Clubs"
            case .hearts: "Hearts"
            }
            let actual: String = suit.word()
            XCTAssertEqual(expected, actual)
        }
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
