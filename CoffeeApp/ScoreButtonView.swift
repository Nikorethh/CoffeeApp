//
//  PointButtonView.swift
//  CoffeeApp
//
//  Created by mac on 03.05.2026.
//

import SwiftUI

struct ScoreButtonView: View {
    
    @State var foregroundColor: Color = Color("BrandDay")
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12.0)
            .frame(height: 72.0)
            .frame(maxWidth: .infinity)
            .foregroundStyle(Color(foregroundColor))
            .overlay(
                HStack(spacing: 18.0) {
                    Image("Score")
                        .resizable()
                        .foregroundStyle(Color("BrandDay"))
                        .frame(width: 24.0, height: 24.0)
                        .scaledToFit()
                        .background(
                            Circle()
                                .frame(width: 32.0, height: 32.0)
                                .foregroundStyle(Color("GrayShine"))
                        )
                    
                    VStack(alignment: .leading) {
                        fonts.h4("Получить баллы")
                            .foregroundStyle(Color("GrayShine"))
                        
                        fonts.p3("Покажите QR-код на кассе")
                            .foregroundStyle(Color("BrandMorning"))
                    }
                    
                    Spacer()
                    
                    Image("Chevron-Right")
                        .resizable()
                        .foregroundStyle(Color("GrayShine"))
                        .frame(width: 24.0, height: 24.0)
                        .scaledToFit()
                    
                }
                .padding(.horizontal, 24.0)
                ,alignment: .leading)
        
            .padding(.horizontal, 16.0)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.2)) {
                    foregroundColor = Color("BrandEvening")
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        foregroundColor = Color("BrandDay")
                    }
                }
            }
        }
    }

#Preview {
    ScoreButtonView()
}
