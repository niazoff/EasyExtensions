//
//  UIViewController.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 6/17/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UIViewController {
    var isVisible: Bool { return self.isViewLoaded && self.view.window != nil }
    
    func add(asChildViewController viewController: UIViewController) {
        self.addChild(viewController)
        self.view.addSubview(viewController.view)
        viewController.didMove(toParent: self)
    }
    
    func remove(asChildViewController viewController: UIViewController) {
        viewController.willMove(toParent: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParent()
    }
}
