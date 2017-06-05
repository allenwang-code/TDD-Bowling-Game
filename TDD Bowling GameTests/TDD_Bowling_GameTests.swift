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
        self.rolling(of: 1)
        XCTAssertEqual(20, game.getScore())
    }

    public func testAllOnes() {
        self.rolling(of: 1)
        XCTAssertEqual(20, game.getScore())
    }
    
    private func rolling(of pins: Int) {
        for _ in 1...20 {
            game.roll(pins: pins)
        }
    }


}
