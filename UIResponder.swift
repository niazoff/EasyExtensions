//
//  UIResponder.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 11/8/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UIResponder {
	func next<T: UIResponder>(_ type: T.Type) -> T? {
		return next as? T ?? next?.next(type)
	}
}
