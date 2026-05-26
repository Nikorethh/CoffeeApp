//
//  S.swift
//  CoffeeApp
//
//  Created by mac on 08.05.2026.
//

import SwiftUI

struct SectionItem {
    let sectionName: String
    let amountOfProducts: Range<Int>
}

struct SectionData {    
    static let sections: [SectionItem] = [
        SectionItem(sectionName: "Кофе", amountOfProducts: 0..<4),
        SectionItem(sectionName: "Напитки", amountOfProducts: 4..<8),
        SectionItem(sectionName: "Сэндвич", amountOfProducts: 8..<11),
        SectionItem(sectionName: "Мороженое", amountOfProducts: 11..<14)
    ]
}
