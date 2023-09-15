//
//  Model.swift
//  OnApperTest
//
//  Created by sako0602 on 2023/09/14.
//

import Foundation
//エンティティ
struct Fruit: Codable, Identifiable{
    var id = UUID()
    var name: String
    var isFavorite: Bool
    var dishName: [String]
}

//🟥let id = UUID() codableはミュータブルにする意味
class FruitModel: ObservableObject {
    
    @Published var fruits = [
        Fruit(name: "いちご", isFavorite: false, dishName: ["ケーキ","パンケーキ"]),
        Fruit(name: "バナナ", isFavorite: false, dishName: ["クレープ","マフィン"]),
        Fruit(name: "ぶどう", isFavorite: false, dishName: ["そのまま","ヨーグルト"])
    ]
    
    func add(){
        fruits.append(Fruit(name: "レモン", isFavorite: false, dishName: ["ケーキ","プリン"]))
    }
    
}

