//
//  ContentView.swift
//  Sec20-Aniamtions
//
//  Created by NAVJOT SINGH on 2023-03-11.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @State private var showDetails: Bool = false
    @State private var animationAmount = 1.0
    
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
                .animation(.interpolatingSpring(stiffness: 100, damping: 20))
            
            Spacer()
            Text("🐦")
                .font(.custom("Arial", size: 100))
                .scaleEffect(self.showDetails ? 2 : 1)
            //.animation(.default)
                .rotationEffect(.degrees(self.showDetails ? 360.0 : 0.0))
                .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10, initialVelocity: 0),value: animationAmount)
            
            Spacer()
            Button("Press me") {
                self.showDetails.toggle()
                if self.showDetails{
                    animationAmount = 2.5
                }else{
                    animationAmount = 1.0
                }
            }.padding()
                .background(Color.green)
                .foregroundColor(Color.white)
            
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
