//
//  ProductDetailView.swift
//  CoffeeApp
//
//  Created by mac on 10.05.2026.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product = Products.products[0]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ExitNavigationView()
            ScrollView(showsIndicators: false) {
                UnevenRoundedRectangle(bottomLeadingRadius: 24.0, bottomTrailingRadius: 24.0)
                    .foregroundStyle(Color("GrayMorning"))
                    .frame(maxWidth: .infinity)
                    .frame(height: 384.0)
                    .overlay(
                        Image(product.image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 256.0)
                    )
                fonts.p2(product.description)
                    .padding(.horizontal, 12.0)
                    .padding(.top, 8.0)
                    .padding(.bottom, 16.0)
                
                SegmentedControlView()
                    .padding(.bottom, 48.0)
                
                ForEach(CardItem.SectionType.allCases, id: \.self) { adjustment in
                    AdjustmentCardsView(adjustmentLabel: adjustment.rawValue, sectionType: adjustment)
                        .padding(.bottom, 12.0)
                }
                
                AddProductView(overallCost: 150, productCost: 150)
                
                Spacer()
            }
        }
    }
}

#Preview {
    ProductDetailView()
}
