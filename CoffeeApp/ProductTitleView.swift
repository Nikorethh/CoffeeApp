//
//  CoffeeTitleView.swift
//  CoffeeApp
//
//  Created by mac on 01.05.2026.
//

import SwiftUI

struct ProductTitleView: View {
    
    let product: ProductInfo
    
    var body: some View {
        VStack(spacing: 0) {
            product.productImage
                .frame(width: 164.0, height: 128.0)
            
            fonts.s1(product.productName)
                .padding(.horizontal, 12.0)
                .padding(.bottom, 8.0)
                .frame(width: 164.0, alignment: .leading)
            
            ButtonTertiary(label: product.productPrice, buttonWidth: 140.0, action: { })
                .padding(.bottom, 12.0)
                .frame(width: 164.0)
        }
        .background(
            RoundedRectangle(cornerRadius: 12.0)
                .foregroundStyle(Color("GrayMorning"))
        )
    }
}


#Preview {
    ProductTitleView(product: ProductData.product[0])
}
