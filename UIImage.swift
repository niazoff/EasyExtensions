//
//  UIImage.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UIImage {
    var aspectRatio: CGFloat {
        return size.height/size.width
    }
    
    var pngData: Data? {
        return UIImagePNGRepresentation(self)
    }
    
    func jpegData(_ compressionQuality: CGFloat) -> Data? {
        return UIImageJPEGRepresentation(self, compressionQuality)
    }
}
