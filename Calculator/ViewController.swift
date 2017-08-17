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
    
    var flagClear : Bool = false
    @IBOutlet weak var displayLbl: UILabel!
    @IBOutlet weak var ClearBtn: UIButton!
    
    @IBAction func ActionBtn(_ sender: UIButton) {
        //flagClear = false
            if sender.tag == 21 {
                if expr != "0" || expr != "" {
                    answ = String(calculating(equation: expr))
                    expr = answ
                    answ = ""
                }
            }
            else if sender.tag == 15 {
                expr = "0"
                flagClear = true
            }
            else if flagClear {
                    flagClear = false
                    expr = (sender.titleLabel?.text)!
            }
            else {
                expr += (sender.titleLabel?.text)!
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

