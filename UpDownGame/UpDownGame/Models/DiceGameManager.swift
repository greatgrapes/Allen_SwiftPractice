//
//  DiceGameManager.swift
//  UpDownGame
//
//  Created by 박진성 on 2023/04/28.
//

import UIKit

struct DiceGameManager {
    private var comNumber = Int.random(in: 1...9)
    private var myNumber: Int = 1
    
    mutating func resetNum() {
        comNumber = Int.random(in: 1...9)
        myNumber = 1
    }
    
    mutating func getUserNum(num: Int) {
        myNumber = num
    }
    
    func getUpDownResult() -> String {
        if comNumber > myNumber {
            return "Up"
        }
        
        if comNumber < myNumber {
            return "Down"
        }
        else {
            return "BINGO"
        }
    }
}

