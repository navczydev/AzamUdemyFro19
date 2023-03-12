//
//  ContentView.swift
//  SwiftUIAll-WatchOS Watch App
//
//  Created by NAVJOT SINGH on 2023-02-28.
//

import SwiftUI

struct ContentView: View {
    let animal = AnimalService.getAnimals()
    var body: some View {
        List {
            ForEach(self.animal, id: \.name) { animal in
                VStack {
                    NavigationLink(destination: DetailsView(animal: animal)){
                        Text(animal.image)
                            .font(.headline)
                            .font(.custom("Arial", size: 100))
                    }
                }
            }.listStyle(.carousel)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
