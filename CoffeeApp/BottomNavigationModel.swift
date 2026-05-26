//
//  BottomNavigationModel.swift
//  CoffeeApp
//
//  Created by mac on 08.05.2026.
//

struct CellItem {
    let imageName: String
    let title: String
}

struct BottomNavigationData {
    
    static let cellItems: [CellItem] = [
        CellItem(imageName: "Bag", title: "Закзать"),
        CellItem(imageName: "Points", title: "Баллы"),
        CellItem(imageName: "Tag", title: "Купоны"),
        CellItem(imageName: "More", title: "Ещё")
    ]
}
