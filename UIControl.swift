//
//  UIControl.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 10/27/17.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UIControl {
    /// Must maintain a strong reference to the given target value.
    func add(_ target: Target, for controlEvents: Event) {
        addTarget(target, action: #selector(Target.performAction), for: controlEvents)
    }
}
