//
//  ViewController.swift
//  window-shopper
//
//  Created by Jake Correnti on 5/11/19.
//  Copyright © 2019 Jake Correnti. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageText: CurrencyTextField!
    @IBOutlet weak var itemPrice: CurrencyTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageText.inputAccessoryView = calcButton
        itemPrice.inputAccessoryView = calcButton
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
    }
    
    @objc func calculate() {
        // if wageText and itemPrice are not nil, assign the value to the constants
        if let wageText = wageText.text, let itemPrice = itemPrice.text {
            // takes the values of the constants above and casts them into doubles if they are numbers
            if let wage = Double(wageText), let price = Double(itemPrice) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                
            }
        }
    }
    
    @IBAction func clearCalculatorButtonPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageText.text = ""
        itemPrice.text = ""
    }
}

