//
//  Date.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 4/9/19.
//  Copyright © 2019 Natanel Niazoff. All rights reserved.
//

import Foundation

extension Date {
    func roundedToNextQuarterHour(calendar: Calendar = .current) -> Date? {
        let currentMinute = calendar.component(.minute, from: self)
        let minuteAddend = (Int(Double(currentMinute/15).rounded(.down) + 1) * 15) - currentMinute
        guard let minuteSumDate = calendar.date(byAdding: .minute, value: minuteAddend, to: self)
            else { return nil }
        if calendar.component(.second, from: minuteSumDate) == 0 {
            return minuteSumDate
        } else {
            return calendar.nextDate(after: minuteSumDate, matching: .init(second: 0), matchingPolicy: .nextTime, direction: .backward)
        }
    }
}
