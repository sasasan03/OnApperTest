//
//  ContentViewModel.swift
//  OnApperTest
//
//  Created by sako0602 on 2023/09/14.
//

import Foundation

class ContentViewModel: ObservableObject{
    @Published var fruits = [
        Fruit(name: "いちご", isFavorite: false, dishName: ["ジャム","ケーキ"]),
        Fruit(name: "バナナ", isFavorite: false, dishName: ["マフィン","クレープ"]),
        Fruit(name: "もも", isFavorite: false, dishName: ["ジャム","ヨーグルト"])
    ]
    
}
