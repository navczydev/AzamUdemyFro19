//
//  StockListViewModel.swift
//  Sec21
//
//  Created by NAVJOT SINGH on 2023-03-13.
//

import Foundation

class StockListViewModel: ObservableObject{
    let stockWebService: WebService =  WebService()
    @Published
    var stocks: [StockViewModel] = [StockViewModel]()
    @Published
    var searchString: String = ""
    
    func getStocks(){
        stockWebService.getStocks{ stocks in
            DispatchQueue.main.async {
                if let stocks = stocks{
                    print("Stock in ViewModel \(stocks)")
                    self.stocks = stocks.map(StockViewModel.init)
                }
            }
        }
    }
}


struct StockViewModel{
    let stock: Stock
    
    var symbol: String{
        return self.stock.symbol.uppercased()
    }
    
    var description: String{
        return self.stock.description
    }
    
    var change:String{
        return self.stock.change
    }
    
    
}
