//
//  ContentView.swift
//  CoffeeApp
//
//  Created by mac on 01.05.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("GrayShine")
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                TopNavigationView()
                    .padding(.bottom, 8.0)
                
                TabBarView(isActive: false)
                
                ScrollView {
                    ScoreButtonView()
                        .padding(.top, 8.0)
                        .padding(.bottom, 24.0)
                    
                    ForEach(0..<4) { section in
                        SectionView(section: SectionData.sections[section])
                            .padding(.bottom, 32.0)
                    }
                }
                
                BottomNavigationView(isActive: false)
            }
        }
    }
}

#Preview {
    ContentView()
}
