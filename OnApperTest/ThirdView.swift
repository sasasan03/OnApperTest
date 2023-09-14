//
//  TherdView.swift
//  OnApperTest
//
//  Created by sako0602 on 2023/09/14.
//

import SwiftUI

struct ThirdView: View {
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

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(ContentViewModel())
    }
}
