//
//  ContentView.swift
//  Sec20-Aniamtions
//
//  Created by NAVJOT SINGH on 2023-03-11.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        VStack {
            Button("Press me", action: {
                self.show.toggle()
                
            })
            if show {
                Text("True")
            }else{
                Text("False")
            }
            
            Image(systemName: "chevron.up.square")
                .rotationEffect(.degrees(self.show ? 0 :180))
                .animation(.default)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
