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
    
    func add(_ childController: UIViewController) {
        self.addChild(childController)
        self.view.addSubview(childController.view)
        childController.didMove(toParent: self)
    }
    
    func remove(_ childController: UIViewController) {
        childController.willMove(toParent: nil)
        childController.view.removeFromSuperview()
        childController.removeFromParent()
    }
}
