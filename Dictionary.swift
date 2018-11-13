//
//  Dictionary.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 11/13/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import Foundation

extension Dictionary {
	mutating func switchKey(_ oldKey: Key, to newKey: Key) {
		if let oldKeyValue = removeValue(forKey: oldKey) { self[newKey] = oldKeyValue }
	}
	
	func switchingKey(_ oldKey: Key, to newKey: Key) -> Dictionary {
		var dictionary = self
		dictionary.switchKey(oldKey, to: newKey)
		return dictionary
	}
}
