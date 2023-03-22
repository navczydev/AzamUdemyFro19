//
//  PlaceListView.swift
//  Sec23
//
//  Created by NAVJOT SINGH on 2023-03-21.
//

import SwiftUI
import MapKit

struct PlaceListView: View {
    
    let landmarks:[Landmark]
    var onTap:()->()
    var body: some View {
        VStack{
            
            List
            {
                Section(header: Text("Coffee shops list").gesture(TapGesture().onEnded{
                    self.onTap()
                }), content: {
                    ForEach(self.landmarks,id: \.id) {
                        landmark in
                        /*@START_MENU_TOKEN@*/Text(landmark.name)/*@END_MENU_TOKEN@*/
                    }
                })
                
            }
        }.cornerRadius(24)
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView(landmarks: [],onTap: {})
    }
}
