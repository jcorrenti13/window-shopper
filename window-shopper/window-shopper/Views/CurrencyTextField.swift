//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Jake Correnti on 5/11/19.
//  Copyright © 2019 Jake Correnti. All rights reserved.
//

import UIKit

@IBDesignable 
class CurrencyTextField: UITextField {
    
    // never keep empty
    // never call super
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let  currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2 - size / 2), width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    // essentially view did load for view elements??? do research on awakeFromNib()
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 10.0
        textAlignment = .center
        clipsToBounds = true
        if let p = placeholder {
            let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
}
