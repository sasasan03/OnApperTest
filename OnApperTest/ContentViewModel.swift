//
//  ContentViewModel.swift
//  OnApperTest
//
//  Created by sako0602 on 2023/09/14.
//

import Foundation

class ContentViewModel: ObservableObject{
    //Modelの値を変換してどんな風に使いたいのか？そのプロパティを制作
    @Published var fruits: [Fruit]
    
    //Modelに書いてあるメソッドを呼び出して使うため
    private let fruitModel: FruitModel
    
    //初期化
    
    init(fruitModel: FruitModel){
        self.fruitModel = fruitModel
        
        fruits = [Fruit(name: "オレンジ", isFavorite: false, dishName: ["ジュース","ケーキ"])]
        
        fruitModel.$fruits
            .assign(to: &$fruits)
    }
    
    func addFruit(){
        fruitModel.add()
    }

}
