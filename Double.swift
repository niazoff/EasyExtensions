//
//  Double.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import Foundation

public extension Double {
    var toNearest100th: Double {
        return (self * 100).rounded()/100
    }
}
