//
//  UIView.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import UIKit

extension UIView {
    public struct Shadow {
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
    
    public class func viewFor(imageName: String) -> UIView? {
        if let image = UIImage(named: imageName) {
            let imageView = UIImageView(image: image)
            imageView.contentMode = .center
            return imageView
        }
        return nil
    }
    
    public class func viewFor(text: String, size: CGFloat = 24, weight: UIFont.Weight = .regular, color: UIColor = UIColor.black) -> UIView {
        let labelView = UILabel()
        labelView.text = text
        labelView.font = UIFont.systemFont(ofSize: size, weight: weight)
        labelView.textColor = color
        labelView.sizeToFit()
        return labelView
    }
    
    public class func hairlineView(withColor color: UIColor = UIColor.lightGray, origin: CGPoint = CGPoint.zero, width: CGFloat) -> UIView {
        let view = UIView()
        view.frame.origin = origin
        view.frame.size = CGSize(width: width, height: 1/UIScreen.main.scale)
        view.backgroundColor = color
        return view
    }
    
    public func add(_ shadow: Shadow) {
        layer.masksToBounds = false
        layer.shadowPath = shadow.path
        layer.shadowColor = shadow.color.cgColor
        layer.shadowOffset = shadow.offset
        layer.shadowRadius = shadow.radius
        layer.shadowOpacity = shadow.opacity
    }
    
    public func expand(_ multiplier: CGFloat) -> Self {
        frame.size = CGSize(width: frame.size.width * multiplier, height: frame.size.height * multiplier)
        return self
    }
}
