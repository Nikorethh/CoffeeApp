//
//  FontModel.swift
//  CoffeeApp
//
//  Created by mac on 01.05.2026.
//

import SwiftUI

struct TextStyles {
    
    func h1(_ text: String) -> Text {
        Text(text).font(.custom("Oswald", size: 32.0))
    }
    
    func h2(_ text: String) -> Text {
        Text(text).font(.custom("Oswald", size: 24.0))
    }
    
    func h3(_ text: String) -> Text {
        Text(text).font(.custom("Oswald", size: 18.0))
    }
    
    func h4(_ text: String) -> Text {
        Text(text).font(.custom("Oswald", size: 16.0))
    }
    
    func h5(_ text: String) -> Text {
        Text(text).font(.custom("Oswald", size: 14.0))
    }
    
    func h6(_ text: String) -> Text {
        Text(text).font(.custom("Oswald", size: 12.0))
    }
    
    func s1(_ text: String) -> Text {
        Text(text).font(.custom("Inter-Medium", size: 16.0))
    }
    
    func s2(_ text: String) -> Text {
        Text(text).font(.custom("Inter-Medium", size: 14.0))
    }
    
    func s3(_ text: String) -> Text {
        Text(text).font(.custom("Inter-Medium", size: 12.0))
    }
    
    func p1(_ text: String) -> Text {
        Text(text).font(.custom("Inter-Regular", size: 16.0))
    }
    
    func p2(_ text: String) -> Text {
        Text(text).font(.custom("Inter-Regular", size: 14.0))
    }
    
    func p3(_ text: String) -> Text {
        Text(text).font(.custom("Inter-Regular", size: 12.0))
    }
    
}

let fonts = TextStyles()
