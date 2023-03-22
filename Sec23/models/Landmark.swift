//
//  Landmark.swift
//  Sec23
//
//  Created by NAVJOT SINGH on 2023-03-20.
//

import Foundation
import MapKit

struct Landmark{
    let placeMark: MKPlacemark
    
    var id: UUID{
        return UUID()
    }
    
    var name: String{
        self.placeMark.name ?? ""
    }
    
    var title: String {
        self.placeMark.title ?? ""
    }
    
    var coord: CLLocationCoordinate2D{
        self.placeMark.coordinate
    }
}

final class LandMarkAnnotation: NSObject, MKAnnotation{
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(landmark:Landmark) {
        self.title = landmark.title
        self.coordinate = landmark.coord
    }
}
