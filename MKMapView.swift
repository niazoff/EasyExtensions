//
//  MKMapView.swift
//  Extensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2017 Natanel Niazoff. All rights reserved.
//

import MapKit

public extension MKMapView {
    public class Annotation: NSObject, MKAnnotation {
        var coordinate: CLLocationCoordinate2D
        
        init(coordinate: CLLocationCoordinate2D) {
            self.coordinate = coordinate
        }
    }
    
    public func addAnnotation(at location: CLLocation) -> MKAnnotation {
        let annotation = Annotation(coordinate: location.coordinate)
        addAnnotation(annotation)
        return annotation
    }
}
