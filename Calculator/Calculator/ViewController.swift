//
//  ViewController.swift
//  Calculator
//
//  Created by Donald Morton on 5/25/17.
//  Copyright © 2017 Donald Morton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentOperation: Operator = Operator.nothing
    var calcState: Calculation = Calculation.newNumStarted
    let operators = ["*","+","-","/"]
    var firstValue: String = ""
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //button actions
    
    @IBAction func numberClicked(_ sender: UIButton){
        updateDisplay(number: String(sender.tag))
    }
    
    func updateDisplay(number: String){
        if calcState == Calculation.newNumStarted{
            if let num = resultLabel.text{
                if num != ""{
                    firstValue = num
                }
            }
            calcState = Calculation.enteringNum
            resultLabel.text = number
        }
        else if calcState == Calculation.enteringNum{
            resultLabel.text = resultLabel.text! + number
        }
    }
    
    
    @IBAction func operatorClicked(_ sender: UIButton){
        calcState = Calculation.newNumStarted
        
        if let num = resultLabel.text{
            if num != "" {
                firstValue = num
                resultLabel.text = ""
            }
        }
        
        switch sender.tag {
        case 10:
            currentOperation = Operator.add
    
        case 11:
            currentOperation = Operator.subtract

        case 12:
            currentOperation = Operator.times
        
        case 13:
            currentOperation = Operator.divide
      
        default:
            return
        }
    }
    
    @IBAction func equalsClicked(_ sender: UIButton){
        calculateSum()
    }
    
    func calculateSum(){
        if firstValue.isEmpty {
            return
        }
        var result = ""
        
        if currentOperation == Operator.times{
   
            result = "\(Double(firstValue)! * Double(resultLabel.text!)!)"
            
        }
        else if currentOperation == Operator.divide{
            result = "\(Double(firstValue)! / Double(resultLabel.text!)!)"
        }
        else if currentOperation == Operator.add{
            result = "\(Double(firstValue)! + Double(resultLabel.text!)!)"
        }
        else if currentOperation == Operator.subtract{
            result = "\(Double(firstValue)! - Double(resultLabel.text!)!)"        }
        resultLabel.text = result
        calcState = Calculation.newNumStarted
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

