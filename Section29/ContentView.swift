//
//  ContentView.swift
//  Section29
//
//  Created by NAVJOT SINGH on 2023-03-29.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isFront:Bool = true
    @State private var degrtees:Double = 0
    
    var body: some View {
        CreditCardUI{
            VStack{
                Group{
                    if isFront{
                        CreditCardFrontView()
                    }else{
                        CreditCardBackView()
                    }
                }
                
            }
            .rotation3DEffect(.degrees(degrtees), axis: (x: 0.0, y: 1.0, z: 0.0))
        }
        .onTapGesture {
            withAnimation{
                degrtees += 360
                isFront.toggle()
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
