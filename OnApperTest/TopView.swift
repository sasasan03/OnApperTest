//
//  TopView.swift
//  OnApperTest
//
//  Created by sako0602 on 2023/09/14.
//

import SwiftUI


struct TopView: View {
    
    @StateObject var viewModel: ContentViewModel
    let fruitModel: FruitModel
    
    init(fruitModel: FruitModel){
        self.fruitModel = fruitModel
        self._viewModel = StateObject(wrappedValue: ContentViewModel(fruitModel: fruitModel))
    }
    
    
    var body: some View {
        TabView{
            ContentView(fruitModel: fruitModel)
                
                .tabItem {
                    Image(systemName: "car")
                }
            SecoundView(fruitModel: fruitModel)
                .tabItem {
                    Image(systemName: "folder.fill")
                }
            ThirdView(fruitModel: fruitModel)
                .tabItem {
                    Image(systemName: "arrowshape.turn.up.forward.circle.fill")
                }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(fruitModel: FruitModel())
    }
}
