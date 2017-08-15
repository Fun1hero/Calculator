//
//  ViewController.swift
//  Calculator
//
//  Created by Admin on 8/15/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var expr : String = ""
    var answ : String = ""
    @IBOutlet weak var displayLbl: UILabel!
    @IBOutlet weak var ClearBtn: UIButton!
    
    @IBAction func ActionBtn(_ sender: UIButton) {
        if displayLbl.text == "0" {
            //displayLbl.text = ""
            switch sender.tag {
                case 0: expr += "0"
                    break
                case 1: expr += "1"
                    break
                case 2: expr += "2"
                    break
                case 3: expr += "3"
                    break
                case 4: expr += "4"
                    break
                case 5: expr += "5"
                    break
                case 6: expr += "6"
                    break
                case 7: expr += "7"
                    break
                case 8: expr += "8"
                    break
                case 9: expr += "9"
                    break
                case 10: expr += "("
                    break
                case 11: expr += ")"
                    break
                case 12: expr += "" //---------------+/-
                    break
                case 13: expr += "."
                    break
                case 14: expr = "0" //---------------Clear
                    break
                case 15: expr += "" //---------------Power
                    break
                case 16: expr += "+"
                    break
                case 17: expr += "-"
                    break
                case 18: expr += "*"
                    break
                case 19: expr += "/"
                    break
                case 20: answ = String(calculating(equation: expr)) //---------------Enter
                    break
                default: expr += ""
            }
        } else {
            displayLbl.text = "0"
        }
        if answ == "" {
            displayLbl.text = expr
        } else {
            displayLbl.text = answ
        }
        print("\(expr)  \(sender.tag)")
    }
    
    
    func calculating(equation : String) -> Double{
        var answer = 0.0
        if let equation = displayLbl.text {
            let tmp = equation
            let expression = NSExpression(format: tmp)
            answer = expression.expressionValue(with: nil, context: nil) as! Double
        }
        return answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

