//
//  Optional.swift
//  Sammys
//
//  Created by Natanel Niazoff on 2/25/19.
//  Copyright © 2019 Natanel Niazoff. All rights reserved.
//

import Foundation

extension Optional {
    static func ?? (lhs: Wrapped?, rhs: @autoclosure () -> Never) -> Wrapped {
        switch lhs {
        case .none: rhs()
        case .some(let unwrapped): return unwrapped
        }
    }
}
