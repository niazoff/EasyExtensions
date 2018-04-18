//
//  URL.swift
//  Sammys
//
//  Created by Natanel Niazoff on 4/18/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

extension URL {
    static func canOpen(_ urlString: String) -> Bool {
        guard let url = URL(string: urlString) else { return false }
        return UIApplication.shared.canOpenURL(url)
    }
    
    static func open(_ urlString: String, completed: ((Bool) -> Void)? = nil) {
        guard let url = URL(string: urlString) else { return }
        return UIApplication.shared.open(url, options: [:], completionHandler: completed)
    }
}
