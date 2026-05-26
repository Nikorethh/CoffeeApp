//
//  AdjustmentCardsModel.swift
//  CoffeeApp
//
//  Created by mac on 16.05.2026.
//

import SwiftUI

struct CardItem {
    
    enum SectionType: String, CaseIterable {
        case milk = "Молоко"
        case syrup = "Сироп"
    }
    
    enum Card: CaseIterable {
        case first
        case second
        case third
        case fourth
        
        var cardImageMilk: String {
            switch self {
            case .first:
                return "RegularMilk"
            case .second:
                return "CoconutMilk"
            case .third:
                return "AlmondMilk"
            case .fourth:
                return "BananaMilk"
            }
        }
        
        var cardLabelMilk: String {
            switch self {
            case .first:
                return "Обычное"
            case .second:
                return "Кокос"
            case .third:
                return "Миндаль"
            case .fourth:
                return "Банан"
            }
        }
        
        var cardImageSyrup: String {
            switch self {
            case .first:
                return "NoneSyrup"
            case .second:
                return "CoconutSyrup"
            case .third:
                return "CaramelSyrup"
            case .fourth:
                return "HazelnutSyrup"
            }
        }
        
        var cardLabelSyrup: String {
            switch self {
            case .first:
                return "Без сиропа"
            case .second:
                return "Кокос"
            case .third:
                return "Карамель"
            case .fourth:
                return "Лес. орех"
            }
        }
        
    }
}

struct AdjustmentData {
    let adjustmentLabel: String
}
