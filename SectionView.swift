//
//  SectionView.swift
//  CoffeeApp
//
//  Created by mac on 04.05.2026.
//

import SwiftUI

struct SectionView: View {
    
    let section: SectionItem
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
        ]

    
    var body: some View {
        VStack(alignment: .leading, spacing: 12.0) {
            fonts.h2(section.sectionName)
            
            LazyVGrid(columns: columns, spacing: 16.0) {
                ForEach(section.amountOfProducts) { product in
                        ProductTitleView(product: ProductData.product[product])
                }
            }
        }
        .padding(.horizontal, 16.0)
    }
}

#Preview {
    SectionView(section: SectionData.sections[0])
}
