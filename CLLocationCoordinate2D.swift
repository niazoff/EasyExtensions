//
//  CLLocationCoordinate2D.swift
//  Sammys
//
//  Created by Natanel Niazoff on 11/29/18.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import CoreLocation
import MapKit

extension CLLocationCoordinate2D {
	private struct Constants {
		static let wazeBaseURL = "waze://"
		static let googleMapsBaseURL = "comgooglemaps://"
	}
	
	func openInMaps(withName name: String? = nil) {
		let placemark = MKPlacemark(coordinate: self, addressDictionary: nil)
		let item = MKMapItem(placemark: placemark)
		item.name = name
		item.openInMaps(launchOptions: nil)
	}
	
	func openInGoogleMaps() {
		guard URL.canOpen(Constants.googleMapsBaseURL) else { return }
		URL.open("\(Constants.googleMapsBaseURL)?q=\(latitude),\(longitude)")
	}
	
	func navigateInWaze() {
		guard URL.canOpen(Constants.wazeBaseURL) else { return }
		URL.open("\(Constants.wazeBaseURL)?ll=\(latitude),\(longitude)&navigate=yes")
	}
}
