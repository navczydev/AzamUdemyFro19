//
//  ContentView.swift
//  SwiftUIAllDevices
//
//  Created by NAVJOT SINGH on 2023-02-28.
//

import SwiftUI

struct ContentView: View {
    
    let animals = AnimalService.getAnimals()
    
    var body: some View {
        VStack {
            NavigationView{
                List(self.animals, id: \.name) { animal in
                    NavigationLink(destination:{
                        AnimalDetails(animal: animal)
                        // To remove back title
                            .toolbarRole(.editor)
                    }){
                        HStack{
                            Text(animal.image).fontWeight(.bold)
                                .font(.custom("Arial", size: 100))
                            
                            Text(animal.name).font(.headline)
                        }
                    }
                    
                    
                }.navigationTitle("Animals list")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
