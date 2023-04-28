//
//  ViewController.swift
//  UpDownGame
//
//  Created by 박진성 on 2023/04/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var upDownManager = DiceGameManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        reset()
    }
    
    func reset() {
        
        mainLabel.text = "숫자를 고르세요~"
        numberLabel.text = ""
        upDownManager.resetNum()
    }
    
    
    @IBAction func choiceNumButtonTapped(_ sender: UIButton) {
        
        guard let numString = sender.currentTitle else {return}
        numberLabel.text = numString
        
        guard let num = Int(numString) else { return }
        upDownManager.getUserNum(num: num)
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        guard let myNumString = numberLabel.text,
              let myNumber = Int(myNumString) else {return}
        
        upDownManager.getUserNum(num: myNumber)
        mainLabel.text = upDownManager.getUpDownResult()
        
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        reset()
        
    }
    

}

