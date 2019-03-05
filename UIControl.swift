//
//  UIControl.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 10/27/17.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UIControl {
    class Target {
        private let actionHandler: () -> Void
        
        init(action: @escaping () -> Void) {
            self.actionHandler = action
        }
        
        @objc func action() { actionHandler() }
    }
    
    /// Must maintain a strong reference to the given target value.
    func add(_ target: Target, for controlEvents: Event) {
        addTarget(target, action: #selector(Target.action), for: controlEvents)
    }
}
