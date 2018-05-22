//
//  Date.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import Foundation

extension Date {
    var millisecondsSince1970: Int {
        return Int((timeIntervalSince1970 * 1000).rounded())
    }
    
    init(milliseconds: Int) {
        self = Date(timeIntervalSince1970: TimeInterval(milliseconds/1000))
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
    
    func minutesUntil(date: Date) -> Int {
        return Calendar.current.dateComponents([.minute], from: self, to: date).minute ?? 0
    }
}
