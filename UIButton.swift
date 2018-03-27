//
//  UIButton.swift
//  Extensions
//
//  Created by Natanel Niazoff on 10/27/17.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UIButton {
    struct Action {
        let target: Any?
        let action: Selector
        let controlEvent: UIControlEvents
    }
    
    func add(_ action: Action) {
        addTarget(action.target, action: action.action, for: action.controlEvent)
    }
    
    func add(_ actions: [Action]) {
        for action in actions {
            add(action)
        }
    }
}
