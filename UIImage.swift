//
//  UIImage.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import UIKit

extension UIImage {
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
