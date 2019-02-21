//
//  String.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 11/4/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import Foundation

public extension String {
    func capitalizingFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
