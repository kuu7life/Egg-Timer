//
//  ViewController.swift
//  FirstAplication
//
//  Created by Kutman Amangeldiev on 2022/9/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var eggLabel: UILabel!
    
    let eggs = ["Soft": 5, "Medium": 7, "Hard": 12]
    var secondsRemaining = 60
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func hardnessPressed(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        eggLabel.text = hardness
        timer.invalidate()
        secondsRemaining = eggs[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }
    
    @objc func update(){
        if secondsRemaining > 0{
            print("\(secondsRemaining) seconds")
            secondsRemaining = secondsRemaining - 1
        } else{
            timer.invalidate()
            eggLabel.text = "Done"
        }
    }
}

