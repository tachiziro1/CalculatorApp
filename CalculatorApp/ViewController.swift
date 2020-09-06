//
//  ViewController.swift
//  CalculatorApp
//
//  Created by たっくん on 2020/09/05.
//  Copyright © 2020 tatsuya.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ansLabel.text = String("0")
    
    }

    @IBOutlet weak var ansLabel: UILabel!
    
    @IBOutlet weak var leftField: UITextField!
    
    @IBOutlet weak var rightField: UITextField!
    
    
    @IBAction func pushButton(_ sender: UIButton) {
    
        if let leftNum = Int(leftField.text!),let rightNum = Int(rightField.text!){
            
            switch sender.titleLabel!.text {
            case "+":
                let result = leftNum + rightNum
                ansLabel.text = String(result)
            case "-":
                let result = leftNum - rightNum
                ansLabel.text = String(result)
            case "x":
                let result = leftNum * rightNum
                ansLabel.text = String(result)

            case "÷":
                let result = leftNum / rightNum
                ansLabel.text = String(result)
            
            default:
                ansLabel.text = ""
            

            }
        }
    
        
    }
}

