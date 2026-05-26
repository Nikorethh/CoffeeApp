//
//  TabBarView.swift
//  CoffeeApp
//
//  Created by mac on 02.05.2026.
//

import SwiftUI

struct TabBarView: View {
    
    @State var isActive: Bool
    let groups: [String] = ["Кофе", "Напитки", "Сэндвичи", "Мороженное"]
    
    var body: some View {
        HStack(spacing: 4.0) {
            ForEach(0..<4) { group in
                TabBarCellView(isActive: $isActive, title: groups[group])
            }
            Spacer()
        }
        .padding(.horizontal, 16.0)
    }
}

struct TabBarCellView: View {
    
    @Binding var isActive: Bool
    @State var textColor: Color = Color("GrayDayLate")
    let title: String
    
    var body: some View {
        fonts.s2(title)
            .foregroundStyle(textColor)
            .frame(height: 40.0)
            .padding(.horizontal, 12.0)
            .onTapGesture {
                isActive.toggle()
                
                if isActive {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        textColor = Color("BrandDay")}
                } else {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        textColor = Color("GrayDayLate")}
                }
            }
    }
}

#Preview {
    TabBarView(isActive: false)
}
