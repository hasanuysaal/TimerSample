//
//  ViewController.swift
//  TimerSample
//
//  Created by Hasan Uysal on 30.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timeText: UITextField!
    
    var remainTime = 0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeLabel.text = "Kalan zaman: \(remainTime)"
        
    }

    
    @IBAction func chooseTime(_ sender: Any) {
        
        remainTime = Int(timeText.text ?? "") ?? 0
        timeLabel.text = "Kalan zaman: \(remainTime)"
        
    }
    
    @IBAction func startBtn(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunc(){
        
        if remainTime > 0 {
            
            remainTime = remainTime - 1
            timeLabel.text = "Kalan zaman: \(remainTime)"
            
        } else {
            
            timeLabel.text = "Süre Bitti"
            timer.invalidate()
            
        }
    }
}

