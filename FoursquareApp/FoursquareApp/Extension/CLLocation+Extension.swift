//
//  CLLocation+Extension.swift
//  Weather
//
//  Created by Sushanth S on 16/06/21.
//


import UIKit
import MapKit

extension CLLocation {
    
    func placemark(completion: @escaping (_ placemark: CLPlacemark?, _ error: Error?) -> ()) {
        
        CLGeocoder().reverseGeocodeLocation(self) { completion($0?.first, $1) }
    }
}
