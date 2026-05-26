//
//  AdjustmentView.swift
//  CoffeeApp
//
//  Created by mac on 15.05.2026.
//

import SwiftUI

struct AdjustmentCardsView: View {
    
    @State var cardPosition: CardItem.Card = .first
    let adjustmentLabel: String
    let sectionType: CardItem.SectionType
        
    var body: some View {
        VStack(spacing: 8.0) {
            
            fonts.h4(adjustmentLabel)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16.0)
            
            ScrollView([.horizontal], showsIndicators: false) {
                HStack(spacing: 8.0) {
                    switch sectionType {
                    case .milk:
                        ForEach(CardItem.Card.allCases, id: \.self) { card in
                                    CardView(position: card, cardPosition: $cardPosition, cardImage: card.cardImageMilk, cardLabel: card.cardLabelMilk, action: {
                                        cardPosition = card
                                        })
                                        .padding(.vertical, 4.0)
                            }
                    case .syrup:
                        ForEach(CardItem.Card.allCases, id: \.self) { card in
                                    CardView(position: card, cardPosition: $cardPosition, cardImage: card.cardImageSyrup, cardLabel: card.cardLabelSyrup, action: {
                                        cardPosition = card
                                        })
                                        .padding(.vertical, 4.0)
                            }
                    }
                }
                .padding(.horizontal, 16.0)
            }
        }
    }
}

#Preview {
    AdjustmentCardsView(cardPosition: .first, adjustmentLabel: "Молоко", sectionType: .syrup)
}
