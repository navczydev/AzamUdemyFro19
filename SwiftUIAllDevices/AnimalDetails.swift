//
//  AnimalDetails.swift
//  SwiftUIAllDevices
//
//  Created by NAVJOT SINGH on 2023-02-28.
//

import SwiftUI

struct AnimalDetails: View {
    
    let animal: Animal
    
    var body: some View {
        VStack{
            Text(self.animal.name)
            Text(self.animal.description)
            Text(self.animal.image)
        }
        
    }
}

struct AnimalDetails_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetails(animal: Animal(name: "Aashu", description: "Dog", image: "🐶"))
    }
}
