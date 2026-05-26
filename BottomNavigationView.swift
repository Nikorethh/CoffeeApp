//
//  BottomNavigationBarView.swift
//  CoffeeApp
//
//  Created by mac on 04.05.2026.
//

import SwiftUI

struct BottomNavigationView: View {
    
    @State var isActive: Bool
    
    var body: some View {
        VStack(spacing: 12.0) {
            Rectangle()
                .foregroundStyle(Color("GrayDayEarly"))
                .frame(maxWidth: .infinity)
                .frame(height: 1.0)
            
            HStack(alignment: .center, spacing: 0) {
                ForEach(0..<4) { cell in
                    BottomCellView(isActive: $isActive, imageName: BottomNavigationData.cellItems[cell].imageName, title: BottomNavigationData.cellItems[cell].title)
                }
            }
        }
    }
}

struct BottomCellView: View {
    
    @Binding var isActive: Bool
    @State var itemColor: Color = Color("GrayDay")
    let imageName: String
    let title: String
    
    var body: some View {
        VStack(spacing: 4.0) {
            Image(imageName)
                .resizable()
                .foregroundStyle(itemColor)
                .scaledToFit()
                .frame(width: 24.0, height: 24.0)
            
            fonts.p3(title)
                .frame(maxWidth: .infinity)
                .foregroundStyle(itemColor)
        }
        .background(
            Rectangle()
                .foregroundStyle(Color("GrayShine"))
                .frame(maxWidth: .infinity)
                .frame(height: 42.0)
                .onTapGesture {
                    isActive.toggle()
                    
                    if isActive {
                        withAnimation(.easeInOut(duration: 0.2)) {
                            itemColor = Color("BrandDay")}
                    } else {
                        withAnimation(.easeInOut(duration: 0.2)) {
                            itemColor = Color("GrayDayLate")}
                    }
                }
        )
    }
}

#Preview {
    BottomNavigationView(isActive: false)
}
