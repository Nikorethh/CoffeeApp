//
//  SegmentedControlView.swift
//  CoffeeApp
//
//  Created by mac on 13.05.2026.
//

import SwiftUI

struct SegmentedControlView: View {
    
    let product = Products.products[0]
    @State var activeSegmnet: SegmentItem.Position = .center
    @State var offsetIndex: CGFloat = 0
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                RoundedRectangle(cornerRadius: 12.0)
                    .foregroundStyle(Color("GrayMorning"))
                    .frame(width: geo.size.width)
                    .frame(height: 40.0)
                
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(height: 36.0)
                    .frame(width: (CGFloat(geo.size.width/CGFloat(SegmentItem.Position.allCases.count))) - 4.0)
                    .offset(x: offsetIndex)
                
                HStack(spacing: 0) {
                    ForEach(SegmentItem.Position.allCases, id: \.self) { segment in
                        SegmentView(position: segment, activeSegmnet: $activeSegmnet, segmentlabel: segment.rawValue, action: {
                            activeSegmnet = segment
                            
                            switch segment {
                            case .left:
                                withAnimation(.easeInOut(duration: 0.2)) {
                                    offsetIndex = -CGFloat(geo.size.width / CGFloat(SegmentItem.Position.allCases.count))
                                }
                            case .center:
                                withAnimation(.easeInOut(duration: 0.2)) {
                                    offsetIndex = 0
                                }
                            case .right:
                                withAnimation(.easeInOut(duration: 0.2)) {
                                    offsetIndex = +CGFloat(geo.size.width / CGFloat(SegmentItem.Position.allCases.count))
                                }
                            }
                        })
                    }
                }
            }
        }
        .padding(.horizontal, 16.0)
    }
}


struct SegmentView: View {
    
    let position: SegmentItem.Position
    @Binding var activeSegmnet: SegmentItem.Position
    let segmentlabel: String
    var textColor: Color {
        get {
            withAnimation(.easeInOut(duration: 0.2)) {
                activeSegmnet == position ? Color("GrayShine") : Color("GrayNight")
            }
        }
    }
    let action: () -> ()
    
    var body: some View {
        fonts.h5(segmentlabel)
            .foregroundStyle(textColor)
            .frame(height: 36.0)
            .frame(maxWidth: .infinity)
            .onTapGesture {
                action()
            }
    }
}

#Preview {
    SegmentedControlView(activeSegmnet: .center)
}
