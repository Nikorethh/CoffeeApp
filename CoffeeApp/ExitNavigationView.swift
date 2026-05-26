//
//  ExitNavigationView.swift
//  CoffeeApp
//
//  Created by mac on 10.05.2026.
//

import SwiftUI

struct ExitNavigationView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .center) {
                ExitButton(action: {})
                fonts.h4("Латте средний")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .background(
                Rectangle()
                    .foregroundStyle(Color("GrayShine"))
                    .frame(maxWidth: .infinity)
            )
            Rectangle()
                .foregroundStyle(Color("GrayMorning"))
                .frame(maxWidth: .infinity)
                .frame(height: 1.0)
        }
    }
}

struct ExitButton: View {
    
    let action: () -> ()
    @State var buttonColor: String = "GrayDayLate"
    
    var body: some View {
        Rectangle()
            .frame(width: 48.0, height: 48.0)
            .foregroundStyle(Color("GrayShine"))
            .overlay(
                Image("Chevron-Left")
                    .resizable()
                    .foregroundStyle(Color(buttonColor))
                    .frame(width: 24.0, height: 24.0)
                    .scaledToFit()
            )
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.2)) {
                    buttonColor = "GrayDay"
                }
                
                action()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        buttonColor = "GrayDayLate"
                    }
                }
                
            }
    }
}

#Preview {
    ExitNavigationView()
}
