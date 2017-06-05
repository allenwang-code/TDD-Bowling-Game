//
//  TDD_Bowling_GameTests.swift
//  TDD Bowling GameTests
//
//  Created by 王適緣 on 2017/6/5.
//  Copyright © 2017年 王適緣. All rights reserved.
//

import XCTest
@testable import TDD_Bowling_Game

class TDD_Bowling_GameTests: XCTestCase {
    let game = Game()

    public func testGutterGame() {
        self.rolling(times: 20, of: 1)
        XCTAssertEqual(20, game.getScore())
    }

    public func testAllOnes() {
        self.rolling(times: 20, of: 1)
        XCTAssertEqual(20, game.getScore())
    }
    
    public func testOneSpare() {
        game.roll(pins: 5)
        game.roll(pins: 5)
        game.roll(pins: 3)
        self.rolling(times: 17, of: 0)
        XCTAssertEqual(16, game.getScore())
    
    }
    
    private func rolling(times: Int, of pins: Int) {
        for _ in 1...times {
            game.roll(pins: pins)
        }
    }


}
