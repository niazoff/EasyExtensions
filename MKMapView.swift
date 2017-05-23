//
//  MKMapView.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import MapKit

extension MKMapView {
    class Annotation: NSObject, MKAnnotation {
        var coordinate: CLLocationCoordinate2D
        
        init(coordinate: CLLocationCoordinate2D) {
            self.coordinate = coordinate
        }
    }
    
    func addAnnotation(at location: CLLocation) -> MKAnnotation {
        let annotation = Annotation(coordinate: location.coordinate)
        addAnnotation(annotation)
        return annotation
    }
}
