//
//  UIView.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UIView {
    struct Shadow {
        let path: CGPath?
        let color: UIColor
        let offset: CGSize
        let radius: CGFloat
        let opacity: Float
        
        init(path: CGPath? = nil, color: UIColor = UIColor.black, offset: CGSize = CGSize(width: 0, height: 0), radius: CGFloat = 3.0, opacity: Float) {
            self.path = path
            self.color = color
            self.offset = offset
            self.radius = radius
            self.opacity = opacity
        }
    }
    
    /// Adds a shadow to the view's layer. Layer's `masksToBounds` property must be set to `true` for this to work properly.
    func add(_ shadow: Shadow) {
        self.layer.shadowPath = shadow.path
        self.layer.shadowColor = shadow.color.cgColor
        self.layer.shadowOffset = shadow.offset
        self.layer.shadowRadius = shadow.radius
        self.layer.shadowOpacity = shadow.opacity
    }
}
