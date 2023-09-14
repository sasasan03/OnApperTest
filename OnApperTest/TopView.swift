//
//  TopView.swift
//  OnApperTest
//
//  Created by sako0602 on 2023/09/14.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        TabView{
            ContentView()
                .environmentObject(ContentViewModel())
                .tabItem {
                    Image(systemName: "car")
                }
            SecoundView()
                .tabItem {
                    Image(systemName: "folder.fill")
                }
            ThirdView()
                .tabItem {
                    Image(systemName: "arrowshape.turn.up.forward.circle.fill")
                }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
            .environmentObject(ContentViewModel())
    }
}
