//
//  Game.swift
//  TDD Bowling Game
//
//  Created by 王適緣 on 2017/6/5.
//  Copyright © 2017年 王適緣. All rights reserved.
//

import Foundation

class Game {
    var score = 0
    
    func roll(pins: Int) {
        score += pins
    }
    
    func getScore() -> Int {
        return score
    }
}
