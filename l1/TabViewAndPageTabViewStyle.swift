//
//  TabViewAndPageTabViewStyle.swift
//  l1
//
//  Created by Ankit Ammanagi on 08/06/26.
//

import SwiftUI

struct TabViewAndPageTabViewStyle: View {
    @State var seletedTab: Int = 0
    
    var body: some View {
        TabView{
            Tab {
                Image(systemName: "house")
            }
            
            Tab {
                Image(systemName: "globe")
            }
            
            Tab {
                Image(systemName: "cart")
            }
        }
        .tabViewStyle(.page)
        .background(Color.red)
        
        
//        TabView(selection: $seletedTab) {
//            Tab("Home",systemImage: "house", value: 0) {
//                HomePage(selectedTab: $seletedTab)
//            }
//            
//            Tab("Browse",systemImage: "globe", value: 1) {
//                Text("Browse page")
//            }
//            
//            Tab("Cart",systemImage: "cart", value: 2) {
//                Text("Cart page")
//            }
//            
//            Tab("Profile",systemImage: "person", value: 3) {
//                Text("Profile page")
//            }
//        
//        }
//        .tint(Color.red)
    }
}

struct HomePage: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                Text("Home page")
                
                Button("Go to Cart") {
                    selectedTab = 2
                }
                .buttonStyle(.borderedProminent)
                .tint(.white)
                .foregroundColor(.green)
            }
        }
    }
}

#Preview {
    TabViewAndPageTabViewStyle()
}
