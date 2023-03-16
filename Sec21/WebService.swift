//
//  WebService.swift
//  Sec21
//
//  Created by NAVJOT SINGH on 2023-03-13.
//

import Foundation

class WebService{
    
    func getStocks(completion:@escaping(([Stock]?)->Void)){
        guard let url = URL(string: "https://island-bramble.glitch.me/stocks") else{
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url){
            data, response, error in
            
            guard let data = data, error == nil else{
                completion(nil)
                return
            }
            
            let stocks = try? JSONDecoder().decode([Stock].self, from: data)
            
            print("Stocks is \(String(describing: stocks))")
            
            stocks == nil ? completion(nil) : completion(stocks)
            
        }.resume()
        
        
    }
    
}
