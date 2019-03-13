//
//  CLLocationCoordinate2D.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff on 11/29/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import CoreLocation
import MapKit

public extension CLLocationCoordinate2D {
    private struct Constants {
        static let googleMapsScheme = "comgooglemaps"
        static let wazeScheme = "waze"
    }
    
    func openInMaps(withName name: String? = nil) {
        let placemark = MKPlacemark(coordinate: self, addressDictionary: nil)
        let item = MKMapItem(placemark: placemark)
        item.name = name
        item.openInMaps(launchOptions: nil)
    }
    
    func openInGoogleMaps() {
        guard let url = URL(string: "\(Constants.googleMapsScheme)://?q=\(latitude),\(longitude)")
            else { return }
        UIApplication.shared.open(url)
    }
    
    func navigateToInWaze() {
        guard let url = URL(string: "\(Constants.wazeScheme)://?ll=\(latitude),\(longitude)&navigate=yes")
            else { return }
        UIApplication.shared.open(url)
    }
}
