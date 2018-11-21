//
//  UIViewController.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 6/17/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UIViewController {
	var isVisible: Bool { return isViewLoaded && view.window != nil }
	
    func add(asChildViewController viewController: UIViewController) {
        addChildViewController(viewController)
        view.addSubview(viewController.view)
        viewController.didMove(toParentViewController: self)
    }
    
    func remove(asChildViewController viewController: UIViewController) {
        viewController.willMove(toParentViewController: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParentViewController()
    }
}
