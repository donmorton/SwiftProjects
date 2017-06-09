//
//  SecondViewController.swift
//  BackToTheFuture
//
//  Created by Donald Morton on 6/8/17.
//  Copyright © 2017 Donald Morton. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        let utils = Util()
        let year = utils.getRandomYear()
        label1.text = utils.getLetterAtIndex(str: year, location: 0)
        label2.text = utils.getLetterAtIndex(str: year, location: 1)
        label3.text = utils.getLetterAtIndex(str: year, location: 2)
        label4.text = utils.getLetterAtIndex(str: year, location: 3)
        
        animateItem(duration: 0.5, delay: 0, object: label1)
    
        animateItem(duration: 0.5, delay: 0.2, object: label2)
        
        animateItem(duration: 0.5, delay: 0.4, object: label3)
        
        animateItem(duration: 0.5, delay: 0.6, object: label4)
    }
    
    
    func animateItem(duration: Double, delay: Double, object: UIView){
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            object.center.x += self.view.bounds.width
        }) { (true) in
            self.view.backgroundColor?.withAlphaComponent(0.2)
        }
    }
    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

