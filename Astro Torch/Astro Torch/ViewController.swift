//
//  ViewController.swift
//  Astro Torch
//
//  Created by Donald Morton on 5/23/17.
//  Copyright © 2017 Donald Morton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isBlue : Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    @IBOutlet weak var myButton: UIButton!

    @IBAction func myButtonClicked(_ sender: UIButton) {
        if isBlue{
            self.view.backgroundColor = UIColor.red
        }
        else{
            self.view.backgroundColor = UIColor.blue
        }
        
        self.isBlue = !isBlue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

