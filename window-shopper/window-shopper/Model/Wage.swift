//
//  Wage.swift
//  window-shopper
//
//  Created by Jake Correnti on 5/11/19.
//  Copyright © 2019 Jake Correnti. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
