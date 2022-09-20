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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func hardnessPressed(_ sender: UIButton) {
        if sender.currentTitle != nil{
            print(sender.currentTitle!)
        } else {
            print("ther is not title for this button")
        }
    }
    
}

