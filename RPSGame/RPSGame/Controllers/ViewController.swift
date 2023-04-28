//
//  ViewController.swift
//  RPSGame
//
//  Created by 박진성 on 2023/04/27.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var computerImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var computerChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var rpsManager = RPSManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        
        mainLabel.text = "선택하세요!"
        
        computerImageView.image = rpsManager.getReady().rpsinfo.image
        myImageView.image = rpsManager.getReady().rpsinfo.image
        
        
        computerChoiceLabel.text = rpsManager.getReady().rpsinfo.name
        myChoiceLabel.text = rpsManager.getReady().rpsinfo.name
    }
    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        print(#function)
        guard let title = sender.currentTitle else { return }
        print(title)
        rpsManager.userGetSelected(name: title)
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        print(#function)
        
        computerImageView.image = rpsManager.getReady().rpsinfo.image
        computerChoiceLabel.text = rpsManager.getReady().rpsinfo.name
        
        myImageView.image = rpsManager.getReady().rpsinfo.image
        myChoiceLabel.text = rpsManager.getReady().rpsinfo.name
        
        rpsManager.allReset()
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        print(#function)
        
        computerImageView.image = rpsManager.getComputerRPS().rpsinfo.image
        computerChoiceLabel.text = rpsManager.getComputerRPS().rpsinfo.name
       
        myImageView.image = rpsManager.getUserRPS().rpsinfo.image
        myChoiceLabel.text = rpsManager.getUserRPS().rpsinfo.name
        
        
        mainLabel.text = rpsManager.getResults()
        
        
    }
}

