//
//  FirstViewController.swift
//  BackToTheFuture
//
//  Created by Donald Morton on 6/8/17.
//  Copyright © 2017 Donald Morton. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let year = Util().getCurrentYear()
        label1.text = Util().getLetterAtIndex(str: year, location: 0)
        label2.text = Util().getLetterAtIndex(str: year, location: 1)
        label3.text = Util().getLetterAtIndex(str: year, location: 2)
        label4.text = Util().getLetterAtIndex(str: year, location: 3)
        
        
        
        Tick()
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.Tick), userInfo: nil, repeats: true)
    }
    
    func Tick(){
        timeLabel.text = Util().getCurrentTime()
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseOut, animations: { 
            self.view.alpha = 0.5
        }) { (true) in
            self.view.alpha = 1.0
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

