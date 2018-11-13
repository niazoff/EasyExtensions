//
//  Array+Equatable.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import Foundation

public extension Array where Element: Equatable {
    mutating func remove(_ element: Element) {
        self = self.filter { $0 != element }
    }
}
