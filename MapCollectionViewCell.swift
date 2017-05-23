//
//  MapCollectionViewCell.swift
//  Hoshiah
//
//  Created by Natanel Niazoff on 5/22/17.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import UIKit
import MapKit

class MapCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var mapView: MKMapView! {
        didSet {
            mapView.isScrollEnabled = false
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 10
    }
}
