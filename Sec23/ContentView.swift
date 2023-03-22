//
//  ContentView.swift
//  Sec23
//
//  Created by NAVJOT SINGH on 2023-03-19.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @ObservedObject private var locationManager = LocationManager()
    @State private var landmarks = [Landmark]()
    @State private var search: String = ""
    @State private var onTap:Bool = false
    var body: some View {
        ZStack(alignment: .top) {
            MapView(landmarks: self.landmarks)
            TextField("Search by location", text: self.$search, onCommit: {
                print("Search entry: \(search)")
                getNearByLandmarks()
            })
            .padding(.all)
            .textFieldStyle(.roundedBorder)
            
            PlaceListView(landmarks: self.landmarks){
                self.onTap.toggle()
            }
            .offset(y: calculateOffset())
            
            
        }
        //.edgesIgnoringSafeArea(.bottom)
        
    }
    
    func getNearByLandmarks(){
        guard let location = locationManager.location else{
            return
        }
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = self.search
        request.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 1000,longitudinalMeters: 1000)
        let search = MKLocalSearch(request: request)
        search.start(completionHandler: {
            (response, error) in
            guard let response = response, error == nil else{
                return
            }
            
            let mapItems = response.mapItems
            
            self.landmarks = mapItems.map{
                Landmark(placeMark: $0.placemark)
            }
            
            print("Mapitems: \(mapItems)")
            
        })
    }
    
    func calculateOffset() -> CGFloat{
        if self.landmarks.count > 0 && self.onTap == true {
            return UIScreen.main.bounds.height - 600
        }else if self.onTap == false{
            return UIScreen.main.bounds.height - 200
        }else{
            return  UIScreen.main.bounds.height
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
