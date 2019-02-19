//
//  UIAlertController.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 11/29/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

extension UIAlertController {
	func addActions(_ actions: [UIAlertAction]) { actions.forEach { addAction($0) } }
}
