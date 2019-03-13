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
        var action: () -> Void
        
        init(action: @escaping () -> Void) {
            self.action = action
        }
        
        @objc func performAction() { action() }
    }
    
    /// Must maintain a strong reference to the given target value.
    func add(_ target: Target, for controlEvents: Event) {
        addTarget(target, action: #selector(Target.performAction), for: controlEvents)
    }
}
