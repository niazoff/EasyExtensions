//
//  UICollectionReusableView.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 11/10/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import UIKit

public extension UICollectionReusableView {
    var collectionView: UICollectionView? {
        return next(UICollectionView.self)
    }
}
