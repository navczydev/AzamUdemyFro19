//
//  DetailsView.swift
//  SwiftUIAll-WatchOS Watch App
//
//  Created by NAVJOT SINGH on 2023-03-11.
//

import SwiftUI

struct DetailsView: View {
    
    let animal: Animal
    
    var body: some View {
        VStack{
            Text(self.animal.name)
            Text(self.animal.description)
            Text(self.animal.image)
                .font(.custom("Arial", size: 100))
        }
        
    }
    
}


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(animal: Animal(name: "Aashu", description: "Chien", image: "🐶"))
    }
}
