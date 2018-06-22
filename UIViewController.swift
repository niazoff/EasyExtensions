//
//  UIViewController.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 6/17/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

extension UIViewController {
    func add(asChildViewController viewController: UIViewController) {
        addChildViewController(viewController)
        view.addSubview(viewController.view)
        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        viewController.didMove(toParentViewController: self)
    }
    
    func remove(asChildViewController viewController: UIViewController) {
        viewController.willMove(toParentViewController: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParentViewController()
    }
}
