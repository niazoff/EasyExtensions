//
//  UIBarButtonItem.swift
//  EasyExtentions
//
//  Created by Natanel Niazoff on 3/18/19.
//  Copyright © 2019 Natanel Niazoff. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    convenience init(image: UIImage?, style: UIBarButtonItem.Style, target: Target) {
        self.init(image: image, style: style, target: target, action: #selector(Target.performAction))
    }
    
    convenience init(barButtonSystemItem systemItem: UIBarButtonItem.SystemItem, target: Target) {
        self.init(barButtonSystemItem: systemItem, target: target, action: #selector(Target.performAction))
    }
}
