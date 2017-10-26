//
//  Date.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import Foundation

extension Date {
    public static var today: Int {
        return Calendar.current.component(.weekday, from: Date())
    }
    public static var currentHebrewYear: Int {
        return Calendar(identifier: .hebrew).component(.year, from: Date())
    }
    public var shortTimeString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        dateFormatter.dateStyle = .none
        return dateFormatter.string(from: self)
    }
    public var minutesFromCurrentDate: Int {
        return Date().minutesUntil(date: self)
    }
    public func minutesUntil(date: Date) -> Int {
        return Calendar.current.dateComponents([.minute], from: self, to: date).minute ?? 0
    }
	public mutating func addWeek() {
        let week: TimeInterval = 60 * 60 * 24 * 7
        addTimeInterval(week)
    }
}
