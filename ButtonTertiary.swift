//
//  ButtonTertiary.swift
//  CoffeeApp
//
//  Created by mac on 01.05.2026.
//

import SwiftUI

struct ButtonTertiary: View {
    
    @State var textColor: Color = Color("GrayNight")
    let label: String
    let buttonWidth: CGFloat
    let action: () -> ()
    
    var body: some View {
        fonts.h5(label)
            .frame(width: buttonWidth, height: 36.0)
            .foregroundStyle(textColor)
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 8.0)
                        .foregroundStyle(Color("GrayNight"))
                        .offset(y: CGFloat(0) + 4.0)
                        .blur(radius: 4.0)
                        .opacity(0.16)
                    
                    RoundedRectangle(cornerRadius: 8.0)
                        .foregroundStyle(Color("GrayShine"))
                }
            )
            .onTapGesture() {
                withAnimation(.easeInOut(duration: 0.2)) {
                    textColor = Color("GrayDay")
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        textColor = Color("GrayNight")
                    }
                }
                action()
                
            }
        }
    }

#Preview {
    ButtonTertiary(label: "Hello, world!", buttonWidth: 140.0, action: { } )
}
