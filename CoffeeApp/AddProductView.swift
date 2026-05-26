//
//  AddProductView.swift
//  CoffeeApp
//
//  Created by mac on 24.05.2026.
//

import SwiftUI

struct AddProductView: View {
    
    @State var overallCost: Int
    @State var productCost: Int
    
    var body: some View {
        HStack {
            CounterView(overallCost: $overallCost, productCost: $productCost)
            Button(action: {}, overallCost: $overallCost)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 16.0)
    }
}

struct Button: View {
    
    let action: () -> ()
    @State var buttonColor: Color = Color("BrandDay")
    @Binding var overallCost: Int
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12.0)
            .foregroundStyle(buttonColor)
            .frame(height: 48.0)
            .frame(maxWidth: .infinity)
            .foregroundStyle(Color("GrayShine"))
            .overlay(
                fonts.h5("\(overallCost) ₽")
                    .foregroundStyle(Color("GrayShine"))
            )
        
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.2)) {
                    buttonColor = Color("BrandEvening")
                }
                
                action()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        buttonColor = Color("BrandDay")
                    }
                }
            }
        }
    }

struct CounterView: View {
    
    let products = Products.products[0]
    @State var counterNumber: Int = 1
    @Binding var overallCost: Int
    @Binding var productCost: Int
    
    var body: some View {
        HStack(spacing: 12.0) {
            if counterNumber == 1 {
                CounterButtonInactive(buttonImage: "Minus")
            } else {
                CounterButtonActive(action: {
                    if counterNumber > 0 {
                        counterNumber -= 1
                    }
                    
                    overallCost -= productCost
                    
                }, buttonImage: "Minus")
            }
            
            CounterNumber(counterNumber: $counterNumber)
            
            if counterNumber == products.maxProductCount {
                CounterButtonInactive(buttonImage: "Plus")
            } else {
                CounterButtonActive(action: {
                    if counterNumber < 9 {
                        counterNumber += 1
                    }
                    
                    overallCost += productCost
                    
                }, buttonImage: "Plus")

            }
        }
        .padding(.horizontal, 24.0)
        .background(
            RoundedRectangle(cornerRadius: 12.0)
                .foregroundStyle(Color("GrayMorning"))
                .frame(height: 48.0)
        )
    }
}

struct CounterButtonActive: View {
    
    let action: () -> ()
    @State var buttonColor: Color = Color("GrayNight")
    let buttonImage: String
    
    var body: some View {
        Image(buttonImage)
            .resizable()
            .foregroundStyle(buttonColor)
            .frame(width: 24.0, height: 24.0)
            .scaledToFit()
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.2)) {
                    buttonColor = Color("GrayDayLate")
                }
                
                action()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        buttonColor = Color("GrayNight")
                    }
                }
            }
    }
}

struct CounterNumber: View {
    
    @Binding var counterNumber: Int
    
    var body: some View {
        fonts.h5("\(counterNumber)")
    }
}

struct CounterButtonInactive: View {
    
    let buttonImage: String
    
    var body: some View {
        Image(buttonImage)
            .resizable()
            .foregroundStyle(Color("GrayDay"))
            .frame(width: 24.0, height: 24.0)
            .scaledToFit()
    }
}

#Preview {
    AddProductView(overallCost: 150, productCost: 150)
}
