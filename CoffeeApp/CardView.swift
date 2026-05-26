//
//  CardView.swift
//  CoffeeApp
//
//  Created by mac on 15.05.2026.
//

import SwiftUI

struct CardView: View {
    
    let position: CardItem.Card
    @Binding var cardPosition: CardItem.Card
    
    let cardImage: String
    let cardLabel: String
    
    let action: () -> ()
    
    var cardStrokeColor: Color {
        cardPosition == position ? Color("GrayNight") : Color("GrayMorning")
    }
    
    var tabTextLabel: String {
        cardPosition == position ? "Выбрано" : "Выбрать"
    }
    
    var tabTextColor: String {
        cardPosition == position ? "GrayShine" : "GrayNight"
    }
    
    var tabBackgroundColor: String {
        cardPosition == position ? "GrayNight" : "GrayShine"
    }
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 12.0)
                .stroke(
                    cardStrokeColor,
                    lineWidth: 2.0
                )
                .frame(width: 104.0, height: 156.0)
            
            RoundedRectangle(cornerRadius: 12.0)
                .foregroundStyle(Color("GrayMorning"))
                .frame(width: 104.0, height: 156.0)
                .overlay(
                    VStack(spacing: 0) {
                        Image(cardImage)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 56.0)
                            .padding(.top, 6.0)
                        
                        fonts.s2(cardLabel)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 12.0)
                            .padding(.top, 12.0)
                            .padding(.bottom, 12.0)
                        
                        CardTabView(textLabel: tabTextLabel, textColor: tabTextColor, backgroundColor: tabBackgroundColor, action: {action()})
                    }
                )
        }
    }
}

//#Preview {
//    CardView(isActive: false, cardImage: "CoconutMilk", cardLabel: "Кокос")
//}
