//
//  UIScrollView.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import UIKit

extension UIScrollView {
    var isAtTop: Bool {
        return contentOffset.y <= -contentInset.top
    }
    var isAtBottomWithInset: Bool {
        return contentOffset.y >= (contentSize.height + contentInset.bottom - bounds.height)
    }
    var isAtBottomWithoutInset: Bool {
        return contentOffset.y >= (contentSize.height - bounds.height)
    }
}
