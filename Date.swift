//
//  Date.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import Foundation

public extension Date {
    var daySuffix: String {
        let dayOfMonth = Calendar.current.component(.day, from: self)
        switch dayOfMonth {
        case 1, 21, 31: return "st"
        case 2, 22: return "nd"
        case 3, 23: return "rd"
        default: return "th"
        }
    }
}
