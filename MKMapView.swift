//
//  MKMapView.swift
//  EasyExtensions
//
//  Created by Natanel Niazoff.
//  Copyright © 2018 Natanel Niazoff. All rights reserved.
//

import MapKit

public extension MKMapView {
    class Annotation: NSObject, MKAnnotation {
        public var coordinate: CLLocationCoordinate2D
        
        init(coordinate: CLLocationCoordinate2D) {
            self.coordinate = coordinate
        }
    }
    
    func addAnnotation(at location: CLLocation) -> MKAnnotation {
        let annotation = Annotation(coordinate: location.coordinate)
        self.addAnnotation(annotation)
        return annotation
    }
}
