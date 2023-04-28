//
//  ViewController.swift
//  TimerApp
//
//  Created by 박진성 on 2023/04/28.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var timerBar: UISlider!
    
    // 숫자(선택된 초)를 관리하기 위한 변수
    var number = 0
    // 타이머 객체를 담기 위한 변수
    var timer: Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureUI()
        
        
    }
    
    func configureUI() {
        
        
    }
    
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let seconds = Int(sender.value * 60)
        mainLabel.text = "\(seconds)초"
        number = seconds
        
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(doSomethingAfter1Second), userInfo: nil, repeats: true)
    }
    
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        timer?.invalidate()
        mainLabel.text = "초를 선택하세요"
        timerBar.value = 0.5
        number = 0
    
    }
    
    @objc func doSomethingAfter1Second() {
        
        if number > 0 {
            number -= 1
            print(number)
            mainLabel.text = "\(number)초"
        } else {
            mainLabel.text = "초를 선택하세요"
            number = 0
            //print(number)
            timer?.invalidate()
            AudioServicesPlaySystemSound(SystemSoundID(1000))
        }
        
    }


}

