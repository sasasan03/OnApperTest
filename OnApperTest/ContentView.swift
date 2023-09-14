//
//  ContentView.swift
//  OnApperTest
//
//  Created by sako0602 on 2023/09/13.
//

import SwiftUI


struct ContentView: View {
    
    @EnvironmentObject var contentViewModel: ContentViewModel
    
    var body: some View {
        VStack{
            List(contentViewModel.fruits){ fruit in
                Text(fruit.name)
            }
            Button("追加"){
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ContentViewModel())
    }
}
