//
//  UIButton.swift
//  Shnayim
//
//  Created by Natanel Niazoff on 10/27/17.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import UIKit

extension UIButton {
    struct Action {
        let target: Any?
        let action: Selector
        let controlEvent: UIControlEvents
    }
    
    class func buttonFor(imageName: String) -> UIButton? {
        if let image = UIImage(named: imageName) {
            let button = UIButton()
            button.setBackgroundImage(image, for: .normal)
            button.contentMode = .scaleAspectFit
            button.sizeToFit()
            return button
        }
        return nil
    }
    
    func add(_ action: Action) {
        addTarget(action.target, action: action.action, for: action.controlEvent)
    }
    
    func add(_ actions: [Action]) {
        for action in actions {
            add(action)
        }
    }
}
