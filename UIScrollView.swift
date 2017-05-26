//
//  UIScrollView.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import UIKit

extension UIScrollView {
    public var isAtTop: Bool {
        return contentOffset.y <= -contentInset.top
    }
    
    public var isAtBottomWithInset: Bool {
        return contentOffset.y >= (contentSize.height + contentInset.bottom - bounds.height)
    }
    
    public var isAtBottomWithoutInset: Bool {
        return contentOffset.y >= (contentSize.height - bounds.height)
    }
}
