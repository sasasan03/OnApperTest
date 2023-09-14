//
//  Model.swift
//  OnApperTest
//
//  Created by sako0602 on 2023/09/14.
//

import Foundation

//🟥let id = UUID() codablegはミュータブルにする意味
struct Fruit: Codable, Identifiable {
    var id = UUID()
    var name: String
    var isFavorite: Bool
    var dishName: [String]
    
    
}
