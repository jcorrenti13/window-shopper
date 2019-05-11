//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Jake Correnti on 5/11/19.
//  Copyright © 2019 Jake Correnti. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField {
    
    // essentially view did load for view elements??? do research on awakeFromNib()
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
}
