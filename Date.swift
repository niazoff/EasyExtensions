//
//  Date.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import Foundation

extension Date {
    static var today: Int {
        return Calendar.current.component(.weekday, from: Date())
    }
    static var currentHebrewYear: Int {
        return Calendar(identifier: .hebrew).component(.year, from: Date())
    }
    var shortTimeString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        dateFormatter.dateStyle = .none
        return dateFormatter.string(from: self)
    }
    var minutesFromCurrentDate: Int {
        return Date().minutesUntil(date: self)
    }
    func minutesUntil(date: Date) -> Int {
        return Calendar.current.dateComponents([.minute], from: self, to: date).minute ?? 0
    }
}
