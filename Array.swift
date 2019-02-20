//
//  Array.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 11/12/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import Foundation

public extension Array {
    func appending(_ element: Element) -> Array {
        var array = self
        array.append(element)
        return array
    }
}
