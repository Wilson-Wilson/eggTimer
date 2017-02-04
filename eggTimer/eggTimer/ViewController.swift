//
//  ViewController.swift
//  eggTimer
//
//  Created by Wilson on 2017-02-04.
//  Copyright © 2017 com.Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var i = 210
    var timer = Timer()
    @IBOutlet weak var timeLabel: UILabel!
    
    func timeMove() {
        if i > 0 {
            i -= 1
            timeLabel.text = String(i)
        }
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timeMove), userInfo: nil, repeats: true)
    }
    
    @IBAction func minusButton(_ sender: Any) {
        if i > 9 {
            i -= 10
            timeLabel.text = String(i)
        }
        
    }
    
    @IBAction func plusButton(_ sender: Any) {
        if i < 201 {
            i += 10
            timeLabel.text = String(i)
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        timer.invalidate()
        i = 210
        timeLabel.text = String(i)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeLabel.text = String(i)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

