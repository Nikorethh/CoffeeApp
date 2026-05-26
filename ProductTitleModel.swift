//
//  ProductTitleModel.swift
//  CoffeeApp
//
//  Created by mac on 09.05.2026.
//

import SwiftUI

struct ProductInfo {
    let productImage: Image
    let productName: String
    let productPrice: String
}

struct ProductData {
    
    static let product: [ProductInfo] = [
        ProductInfo(productImage: Image("Cup"), productName: "Латте", productPrice: "от 120 ₽"),
        ProductInfo(productImage: Image("Cup"), productName: "Капучино", productPrice: "от 120 ₽"),
        ProductInfo(productImage: Image("Cup"), productName: "Американо", productPrice: "от 90 ₽"),
        ProductInfo(productImage: Image("Cup"), productName: "Раф", productPrice: "от 180 ₽"),
        ProductInfo(productImage: Image("Pepsi"), productName: "Pepsi", productPrice: "от 100 ₽"),
        ProductInfo(productImage: Image("Sprite"), productName: "Sprite", productPrice: "от 100 ₽"),
        ProductInfo(productImage: Image("Fanta"), productName: "Fanta", productPrice: "от 100 ₽"),
        ProductInfo(productImage: Image("MountainDew"), productName: "MountainDew", productPrice: "от 120 ₽"),
        ProductInfo(productImage: Image("Chicken"), productName: "С курицей", productPrice: "от 90 ₽"),
        ProductInfo(productImage: Image("Tuna"), productName: "С тунцом", productPrice: "от 120 ₽"),
        ProductInfo(productImage: Image("Salmon"), productName: "С лососем", productPrice: "от 120 ₽"),
        ProductInfo(productImage: Image("Chocolate"), productName: "Шоколадное", productPrice: "от 80 ₽"),
        ProductInfo(productImage: Image("Vanilla"), productName: "Ванильное", productPrice: "от 80 ₽"),
        ProductInfo(productImage: Image("Caramel"), productName: "Карамельное", productPrice: "от 80 ₽"),
    ]
    
}
