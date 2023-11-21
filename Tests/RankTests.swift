//
//  RankTests.swift
//  CardGames
//
//  Created by Alonso del Arte on 11/21/23.
//

import XCTest

final class RankTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRankSymbol() {
        for rank in Rank.allCases {
            let expected: String = switch (rank) {
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
            let actual: String = rank.symbol()
            XCTAssertEqual(expected, actual)
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
