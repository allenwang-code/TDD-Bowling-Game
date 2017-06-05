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
    
    public func testGutterGame() {
        let game = Game()
        for i in 0...20 {
            game.roll(pins: 0)
            XCTAssertEqual(0, game.getScore())
        }
    }

    public func testAllOnes() {
        let game = Game()
        for i in 0..<20 {
            print(i)
            game.roll(pins: 1)
        }
        XCTAssertEqual(20, game.getScore())
    }
}
