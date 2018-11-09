//
//  NSLayoutConstraint.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 6/21/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension Array where Element == NSLayoutConstraint {
    func activateAll() {
        NSLayoutConstraint.activate(self)
    }
    
    func deactivateAll() {
        NSLayoutConstraint.deactivate(self)
    }
}
