//
//  AnimalService.swift
//  SwiftUIAllDevices
//
//  Created by NAVJOT SINGH on 2023-02-28.
//

import Foundation


class AnimalService{
    
    static func getAnimals() -> [Animal] {
        return [Animal(name: "Dog", description: "Aashu", image: "🐶"),
                Animal(name: "Cat", description: "Aashu", image: "🐱"),
                Animal(name: "Lion", description: "Aashu", image: "🦁")
        ]
    }
}
