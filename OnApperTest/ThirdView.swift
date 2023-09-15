//
//  TherdView.swift
//  OnApperTest
//
//  Created by sako0602 on 2023/09/14.
//

import SwiftUI

struct ThirdView: View {
//    @EnvironmentObject var contentViewModel: ContentViewModel
    @StateObject var viewModel: ThirdViewModel
    let fruitModel: FruitModel
    
    init(fruitModel: FruitModel){
        self.fruitModel = fruitModel
        self._viewModel = StateObject(wrappedValue: ThirdViewModel(fruitModel: fruitModel))
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

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(fruitModel: FruitModel())
//            .environmentObject(ContentViewModel())
    }
}
