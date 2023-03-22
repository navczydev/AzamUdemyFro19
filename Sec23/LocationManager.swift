//
//  LocationManager.swift
//  Sec23
//
//  Created by NAVJOT SINGH on 2023-03-20.
//

import Foundation
import MapKit

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate{
    
    private let locatioanManager = CLLocationManager()
    @Published var location:CLLocation? = nil
    
    override init() {
        super.init()
        self.locatioanManager.delegate = self
        self.locatioanManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locatioanManager.distanceFilter = kCLDistanceFilterNone
        self.locatioanManager.requestWhenInUseAuthorization()
        self.locatioanManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else{
            return
        }
        
        self.location = location
    }
    
}
