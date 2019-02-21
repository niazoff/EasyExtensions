//
//  UIImage.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UIImage {
    var aspectRatio: CGFloat {
        return self.size.height/self.size.width
    }
}
