//
//  SearchView.swift
//  Sec21
//
//  Created by NAVJOT SINGH on 2023-03-14.
//

import SwiftUI

struct SearchView: View {
    @Binding var searchTerm:String
    var body: some View {
        HStack{
           // Spacer()
            Image(systemName: "magnifyingglass")
            TextField("Search here", text: self.$searchTerm)
                .foregroundColor(.primary)
                .padding(10)
           // Spacer()
        }.foregroundColor(.secondary)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10)
            .padding(10)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchTerm: .constant("NSDQ"))
    }
}
