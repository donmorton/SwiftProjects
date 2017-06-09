//
//  ViewController.swift
//  TemperateConverter
//
//  Created by Donald Morton on 5/23/17.
//  Copyright © 2017 Donald Morton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tempEntry: UITextField!
    
    @IBOutlet weak var tempLabel: UILabel!
    
    
    @IBOutlet weak var numConv: UILabel!
 
    
    var numConvs = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertClicked(_ sender: Any) {
        if let myEntry = tempEntry.text{
            if(myEntry == ""){
                tempLabel.text = "Error"
            }
            else{
                if let num = Double(myEntry){
                    let output = num * (9/5) + 32
                    tempLabel.text = String(output)
                    numConvs += 1
                    numConv.text = String(numConvs) + " conversions"
                    
                }
            }
        }
        
    }
    
}

