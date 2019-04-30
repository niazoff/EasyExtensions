//
//  UIGestureRecognizer.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 4/29/19.
//  Copyright © 2019 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UIGestureRecognizer {
    convenience init(target: Target) {
        self.init(target: target, action: #selector(Target.performAction))
    }
}
