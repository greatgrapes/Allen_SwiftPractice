//
//  ViewController.swift
//  DiceGame
//
//  Created by 박진성 on 2022/12/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainlabel: UILabel!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    var diceManager = DiceManager()
    
    // 앱의 화면에 들어오면 가장 먼저 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .darkGray
        mainlabel.backgroundColor = .white
        mainlabel.text = "🎲Roll the Dice🎲"
        firstImageView.image = diceManager.getFirstDice()
        secondImageView.image = diceManager.getRandomDice()
    }
    

    @IBAction func rollButtonTapped(_ sender: UIButton) {
        firstImageView.image = diceManager.getRandomDice()
        secondImageView.image = diceManager.getRandomDice()
    }
}

