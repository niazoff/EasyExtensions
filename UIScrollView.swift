//
//  UIScrollView.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UIScrollView {
    var isAtTop: Bool {
        return contentOffset.y <= -contentInset.top
    }
    
    var isAtBottom: Bool {
        return contentOffset.y >= (contentSize.height - bounds.height)
    }
}
