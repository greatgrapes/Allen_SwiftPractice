//
//  RPS.swift
//  RPSGame
//
//  Created by 박진성 on 2023/04/28.
//

import Foundation
import UIKit


enum RPS: Int {
    case ready
    case rock
    case scissors
    case paper
    
    var rpsinfo: (image: UIImage, name: String) {
        switch self {
        case .ready:
            return (#imageLiteral(resourceName: "ready"), "준비")
        case .rock:
            return (#imageLiteral(resourceName: "rock"), "바위")
        case .paper:
            return (#imageLiteral(resourceName: "paper"), "보")
        case .scissors:
            return (#imageLiteral(resourceName: "scissors"), "가위")
        }
    }
    
    
}

