//
//  Date.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import Foundation

extension Date {
    init(milliseconds: Int) {
        self = Date(timeIntervalSince1970: TimeInterval(milliseconds/1000))
    }
    
    var millisecondsSince1970: Int {
        return Int((timeIntervalSince1970 * 1000).rounded())
    }
    
    static var today: Int {
        return Calendar.current.component(.weekday, from: Date())
    }
    
    static var currentHebrewYear: Int {
        return Calendar(identifier: .hebrew).component(.year, from: Date())
    }
    
    var minutesFromCurrentDate: Int {
        return Date().minutesUntil(date: self)
    }
    
    var daySuffix: String {
        let dayOfMonth = Calendar.current.component(.day, from: self)
        switch dayOfMonth {
        case 1, 21, 31: return "st"
        case 2, 22: return "nd"
        case 3, 23: return "rd"
        default: return "th"
        }
    }
    
    func minutesUntil(date: Date) -> Int {
        return Calendar.current.dateComponents([.minute], from: self, to: date).minute ?? 0
    }
}
