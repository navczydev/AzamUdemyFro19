//
//  ContentView.swift
//  Sec21
//
//  Created by NAVJOT SINGH on 2023-03-13.
//

import SwiftUI

struct ContentView: View {
    @State private var search:String = ""
    @ObservedObject private var stockListVM = StockListViewModel()
    
    init(){
        // UINavigationBar.appearance().backgroundColor = UIColor.black
        //        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        // UITableView.appearance().backgroundColor = UIColor.black
        // UITableViewCell.appearance().backgroundColor = UIColor.black
        stockListVM.getStocks()
        
    }
    
    var body: some View {
        let filteredStocks = self.stockListVM.searchString.isEmpty ? stockListVM.stocks : self.stockListVM.stocks.filter{
            $0.symbol.starts(with: stockListVM.searchString)
        }
        NavigationView{
            VStack(alignment: .leading){
                SearchView(searchTerm: self.$stockListVM.searchString)
                StockListView(stocks: filteredStocks)
            }
            .navigationBarTitle(Text("Stock"), displayMode: .large)
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
