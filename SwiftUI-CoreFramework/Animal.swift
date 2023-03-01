//
//  Animal.swift
//  SwiftUIAllDevices
//
//  Created by NAVJOT SINGH on 2023-02-28.
//

import Foundation


struct Animal:Hashable{
    let name: String
    let description: String
    let image: String
}

extension Animal{
    static var placeHolder: Animal = Animal(name: "", description: "", image: "")
}
