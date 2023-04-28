//
//  RPSManager.swift
//  RPSGame
//
//  Created by 박진성 on 2023/04/27.
//

import Foundation
import UIKit


struct RPSManager {
    private var comChoice: RPS = RPS(rawValue: Int.random(in: 1...3))!
    private var myChoice: RPS = RPS(rawValue: Int.random(in: 1...3))!
    
    func getReady() -> RPS {
        return RPS.ready
    }
    
    func getUserRPS() -> RPS {
        return myChoice
    }
        
    func getComputerRPS() -> RPS {
        return comChoice
    }
    
    mutating func userGetSelected(name: String) {
        switch name {
        case "rock":
            myChoice = RPS.rock
        case "scissors":
            myChoice = RPS.scissors
        case "paper":
            myChoice = RPS.paper
        default:
            break
        }
    }
    
    func getResults() -> String {
        if comChoice == myChoice {
            return "DRAW"
        } else if comChoice == .rock && myChoice == .paper {
            return "WIN☺️"
        } else if comChoice == .paper && myChoice == .scissors {
            return "WIN☺️"
        } else if comChoice == .scissors && myChoice == .rock {
            return "WIN☺️"
        } else {
            return "LOSE😂"
        }
    }
    
    mutating func allReset() {
        comChoice = RPS(rawValue: Int.random(in: 1...3))!
        myChoice = RPS(rawValue: Int.random(in: 1...3))!
    }
    
}
