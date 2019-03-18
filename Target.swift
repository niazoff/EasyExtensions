//
//  Target.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 3/18/19.
//  Copyright © 2019 Natanel Niazoff. All rights reserved.
//

import Foundation

public class Target {
    var action: () -> Void
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    @objc func performAction() { action() }
}
