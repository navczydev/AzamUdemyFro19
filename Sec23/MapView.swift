//
//  MapView.swift
//  Sec23
//
//  Created by NAVJOT SINGH on 2023-03-20.
//

import Foundation
import UIKit
import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    
    let landmarks: [Landmark]
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        let map  = MKMapView()
        map.delegate = context.coordinator
        map.showsUserLocation = true
        return map
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        // TODO-: update goes here
        updateAnnotations(from: uiView)
    }
    
    func updateAnnotations(from mapView:MKMapView){
        mapView.removeAnnotations(mapView.annotations)
        
        let annotaions = self.landmarks.map(LandMarkAnnotation.init)
        
        mapView.addAnnotations(annotaions)
    }
    
}
