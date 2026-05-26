//
//  CardTabView.swift
//  CoffeeApp
//
//  Created by mac on 17.05.2026.
//

import SwiftUI

struct CardTabView: View {
    
    let textLabel: String
    let textColor: String
    let backgroundColor: String
    let action: () -> ()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8.0)
                .foregroundStyle(Color("GrayNight"))
                .frame(width: 88.0, height: 36.0)
                .offset(y: CGFloat(0) + 4.0)
                .blur(radius: 4.0)
                .opacity(0.16)
            
            fonts.h5(textLabel)
                .foregroundStyle(Color(textColor))
                .background(
                    RoundedRectangle(cornerRadius: 8.0)
                        .foregroundStyle(Color(backgroundColor))
                        .frame(width: 88.0, height: 36.0)
                        .padding(.top, 2.0)
                        .onTapGesture {
                            action()
                    }
                )
            }
        }
    }

#Preview {
    CardTabView(textLabel: "Выбрать", textColor: "GrayNight", backgroundColor: "GrayShine", action: {})
}
