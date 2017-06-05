//
//  Game.swift
//  TDD Bowling Game
//
//  Created by 王適緣 on 2017/6/5.
//  Copyright © 2017年 王適緣. All rights reserved.
//

import Foundation

class Game {
    var currentRoll = 0
    
    var rolls = [Int]()
    
    func roll(pins: Int) {
        currentRoll += 1
    
        rolls.append(pins)
    }
    
    func getScore() -> Int {
        let noTenthBonus = rolls.count == 20
        if noTenthBonus{ rolls.append(0) }
        
        var score = 0
        
        for i in 0...19 {
            score += rolls[i]
        }
        
        for i in 0...18 {
            let odd = rolls[i]
            let even = rolls[i+1]
            let bonus = rolls[i+2]
            if odd + even == 10 {
                score += bonus
            }
        }
        
        return score
    }
}
