//
//  Stock.swift
//  Sec21
//
//  Created by NAVJOT SINGH on 2023-03-13.
//

import Foundation

struct Stock: Decodable{
    let symbol: String
    let description: String
    let price: Double
    let change: String
}
