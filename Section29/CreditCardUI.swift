//
//  CreditCardUI.swift
//  Section29
//
//  Created by NAVJOT SINGH on 2023-04-01.
//

import SwiftUI

struct CreditCardUI<Content>: View where Content: View {
    
    var content: ()-> Content
    
    var body: some View {
        content()
    }
}

struct CreditCardFrontView: View {
    var body: some View{
        VStack(alignment:.leading){
            
            HStack(alignment: .top){
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.white)
                Spacer()
                Text("Visa")
                    .foregroundColor(.white)
            }
            Spacer()
            
            Text("**** **** **** 1234")
                .foregroundColor(.white)
                .fontWidth(.standard)
                .fontWeight(.bold)
                .font(.title)
            Spacer()
            HStack{
                VStack(alignment: .leading){
                    Text("Cardholder")
                        .foregroundColor(.white)
                    Text("Nav Singh")
                        .foregroundColor(.white)
                        .font(.system(size: 32).bold())
                }
                Spacer()
                VStack{
                    Text("Expires")
                        .foregroundColor(.white)
                    Text("02/23")
                        .foregroundColor(.white)
                }
            }
        }.padding()
            .frame(width: 300,height: 180)
            .background(LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing))
            .cornerRadius(16.0)
    }
}

struct CreditCardBackView: View {
    var body: some View{
        VStack{
            RoundedRectangle(cornerSize: CGSize(width: 0, height: 0))
                .frame(width: .infinity,height: 20)
                .padding([.top])
            Spacer()
            HStack{
                Spacer()
                Text("123")
                    .foregroundColor(.black)
                    .padding(5)
                    .frame(width: 100,height: 20)
                    .background(Color.white)
            }.padding()
        }
        .frame(width: 300,height: 180)
        .background(LinearGradient(colors: [Color.green, Color.blue], startPoint: .leading, endPoint: .trailing))
        .cornerRadius(16.0)
    }
}

struct CreditCardUI_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardUI(content: {
            CreditCardBackView()
        })
    }
}
