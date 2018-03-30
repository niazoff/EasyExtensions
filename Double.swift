//
//  Double.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import Foundation

public extension Double {
    var priceString: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        return numberFormatter.string(from: NSNumber(value: self))!
    }
    
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded()/divisor
    }
}
