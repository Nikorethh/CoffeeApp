//
//  ProductModel.swift
//  CoffeeApp
//
//  Created by mac on 26.05.2026.
//

import SwiftUI

struct ProductModel {
    let image: String
    let description: String
    let segmentedControl: any View
    let adjustments: any View
    let maxProductCount: Int
    @State var overallCost: Int
    let productCost: Int
}

struct Products {
    static let products: [ProductModel] = [
        ProductModel(image: "CupDetailImage", description: "Латте — это горячий напиток из кофе с молоком, с кремовой пенкой сверху. Он имеет богатый вкус кофе и нежную текстуру за счет молока.", segmentedControl: EmptyView(), adjustments: EmptyView(), maxProductCount: 9, overallCost: 150, productCost: 150)
    ]
}
