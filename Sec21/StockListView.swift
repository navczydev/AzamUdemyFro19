//
//  StockListView.swift
//  Sec21
//
//  Created by NAVJOT SINGH on 2023-03-15.
//

import SwiftUI

struct StockListView: View {
    let stocks:[StockViewModel]
    @State private var dragChangeX = 0.0
    var body: some View {
        List(stocks, id: \.symbol, rowContent: { stock in
            HStack{
                VStack(alignment: .leading){
                    Text("\(stock.symbol)")
                        .offset(x: dragChangeX)
                    Text("\(stock.description)")
                        .offset(x: dragChangeX)
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("$\(stock.stock.price)")
                    Text("$\(stock.stock.change)")
                        .background(Color.red)
                }
            }.gesture(
                DragGesture()
                    .onChanged({ value in
                        dragChangeX = value.translation.width
                        print("Drag started \(value.translation)")
                    })
                    .onEnded({ value in
                        print("Drag ended \(value.translation)")
                    }))
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
