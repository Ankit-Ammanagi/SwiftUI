//
//  BackgroundAndOverlay.swift
//  l1
//
//  Created by Ankit Ammanagi on 29/05/26.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 100, height: 100)
//                
//            )
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(colors: [ Color.blue,Color.red], startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 120, height: 120)
//            )
        
        
//        Rectangle()
//            .overlay(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 50, height: 50)
//                , alignment: .bottomTrailing
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 150, height: 150)
//                , alignment: .bottomTrailing
//            )
//            .frame(width: 100, height: 100)
        
        
        Image(systemName: "heart.fill")
            .font(.system(size: 50))
            .foregroundColor(Color.red)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color.red, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color(.blue) ,radius: 5, x:0, y: 5)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("4")
                                    .foregroundColor(.white)
                            )
                            .shadow(color: .blue,radius: 5, x: 0, y: 5)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundAndOverlay()
}
