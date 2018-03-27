//
//  UIView.swift
//  Extensions
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
        
        init(path: CGPath? = nil, color: UIColor = UIColor.black, offset: CGSize = CGSize(width: 0, height: -3.0), radius: CGFloat = 3.0, opacity: Float) {
            self.path = path
            self.color = color
            self.offset = offset
            self.radius = radius
            self.opacity = opacity
        }
    }
    
    /// Adds a shadow to the view's layer. Calling this function will set the `masksToBounds` to `false`.
    func add(_ shadow: Shadow) {
        layer.masksToBounds = false
        layer.shadowPath = shadow.path
        layer.shadowColor = shadow.color.cgColor
        layer.shadowOffset = shadow.offset
        layer.shadowRadius = shadow.radius
        layer.shadowOpacity = shadow.opacity
    }
}
