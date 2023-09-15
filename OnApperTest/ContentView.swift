//
//  ContentView.swift
//  OnApperTest
//
//  Created by sako0602 on 2023/09/13.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var viewModel: ContentViewModel
    let fruitModel: FruitModel
    
    init(fruitModel: FruitModel){
        self.fruitModel = fruitModel
        self._viewModel = StateObject(wrappedValue: ContentViewModel(fruitModel: fruitModel))
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruitModel: FruitModel())
    }
}
