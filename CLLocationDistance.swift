//
//  CLLocationDistance.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import CoreLocation

public extension CLLocationDistance {
    private struct Constants {
        static let mileValue = 1609.344
    }
    
    var miles: CLLocationDistance {
        return self/Constants.mileValue
    }
}
