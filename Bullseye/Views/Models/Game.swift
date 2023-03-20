//
//  Game.swift
//  Bullseye
//
//  Created by Maryna Bolotska on 03/02/23.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        var difference: Int = self.target - sliderValue
        if difference < 0 {
            difference = difference * -1
        }
        
//        if sliderValue > self.target {
//            difference = sliderValue - self.target
//        } else if
//            self.target > sliderValue {
//                difference = self.target - sliderValue
//            } else {
//                difference = 0
//            }
        var awardedPoint: Int = 100 - difference
        return awardedPoint
        }
    }

