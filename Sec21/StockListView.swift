//
//  StockListView.swift
//  Sec21
//
//  Created by NAVJOT SINGH on 2023-03-15.
//

import SwiftUI

struct StockListView: View {
    let stocks:[StockViewModel]
    var body: some View {
        List(stocks, id: \.symbol, rowContent: { stock in
            HStack{
                VStack(alignment: .leading){
                    Text("\(stock.symbol)")
                    Text("\(stock.description)")
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("$\(stock.stock.price)")
                    Text("$\(stock.stock.change)")
                        .background(Color.red)
                }
            }
        })
        .listStyle(.insetGrouped)
     
    }
}

struct StockListView_Previews: PreviewProvider {
    static var previews: some View {
        let stock = Stock(symbol: "Google", description: "Google stocks", price: 0.2, change: "108%")
        StockListView(stocks: [StockViewModel(stock:stock),StockViewModel(stock:stock)])
    }
}
