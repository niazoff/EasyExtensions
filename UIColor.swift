//
//  UIColor.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

extension UIColor {
    private struct Constants {
        static let badHexValue = "Bad hex value"
    }
    
    /// Initializes an instance with the given hex value.
    convenience init(hex: String) {
        let noHashString = hex.replacingOccurrences(of: "#", with: "")
        let scanner = Scanner(string: noHashString)
        scanner.charactersToBeSkipped = CharacterSet.symbols
        
        var hexInt: UInt32 = 0
        if (scanner.scanHexInt32(&hexInt)) {
            // Shift values all the way to left (each hex character is 4 bits) if neccessary. Mask to just include the respective RGB value by using the and operator.
            let red = (hexInt >> 16) & 0xFF
            let green = (hexInt >> 8) & 0xFF
            let blue = (hexInt) & 0xFF
            
            self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
        } else {
            fatalError(Constants.badHexValue, file: #file, line: #line)
        }
    }
}
