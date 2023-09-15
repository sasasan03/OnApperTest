//
//  SecoundView.swift
//  OnApperTest
//
//  Created by sako0602 on 2023/09/14.
//

import SwiftUI

struct SecoundView: View {
    
    @StateObject var viewModel: SecondViewModel
    let fruitModel: FruitModel
    
    init(fruitModel: FruitModel){
        self.fruitModel = fruitModel
        self._viewModel = StateObject(wrappedValue: SecondViewModel(fruitModel: fruitModel))
    }
    
    var body: some View {
        VStack{
            List(viewModel.fruits){ fruit in
                Text(fruit.name)
            }
            Button("追加"){
                viewModel.addFruit()
            }
        }
    }
}

struct SecoundView_Previews: PreviewProvider {
    static var previews: some View {
        SecoundView(fruitModel: FruitModel())
//            .environmentObject(ContentViewModel())
    }
}
