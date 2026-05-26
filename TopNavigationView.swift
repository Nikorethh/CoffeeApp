//
//  TopNavigationView.swift
//  CoffeeApp
//
//  Created by mac on 02.05.2026.
//

import SwiftUI

struct TopNavigationView: View {
    var body: some View {
        HStack(spacing: 12.0) {
            Image("Shop")
                .resizable()
                .frame(width: 24.0, height: 24.0)
                .scaledToFit()
                .foregroundStyle(Color("BrandDay"))
                .padding(.leading, 16.0)
                        
            VStack(alignment: .leading) {
                fonts.s2("БЦ «Хамелеон»")
                    .foregroundStyle(Color("GrayNight"))
                
                fonts.p3("Москва, Рязанский проспект, 10, стр. 18")
                    .foregroundStyle(Color("GrayDayLate"))
            }
            
            Spacer()
            
            Image("Chevron-Right")
                .resizable()
                .frame(width: 16.0, height: 16)
                .scaledToFit()
                .foregroundStyle(Color("GrayDayLate"))
                .padding(.trailing, 16.0)
        }
        .background(
            VStack(spacing: 0) {
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 48.0)
                    .foregroundStyle(Color("GrayShine"))
                
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 1.0)
                    .foregroundStyle(Color("GrayMorning"))
            }
        )
    }
}

#Preview {
    TopNavigationView()
}
