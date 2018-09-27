//
//  DateFormatter.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 7/27/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import Foundation

extension DateFormatter {
    convenience init(format: String) {
        self.init()
        dateFormat = format
    }
}
