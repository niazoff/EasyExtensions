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
        return self.contentOffset.y <= -self.contentInset.top
    }
    
    var isAtBottom: Bool {
        return self.contentOffset.y >= (self.contentSize.height - self.bounds.height)
    }
}
