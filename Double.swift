//
//  Double.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import Foundation

extension Double {
    public var nearest100th: Double {
        return (self * 100).rounded()/100
    }
}
