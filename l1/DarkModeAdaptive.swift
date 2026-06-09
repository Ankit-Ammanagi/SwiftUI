//
//  DarkModeAdaptive.swift
//  l1
//
//  Created by Ankit Ammanagi on 09/06/26.
//

import SwiftUI

struct DarkModeAdaptive: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                            .ignoresSafeArea()
            
            VStack(spacing: 40){
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.primary)
                
                Text("Hello, World!")
                    .foregroundColor(.secondary)
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.red)
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("CustomColor"))
                
                Text("Enviroment")
                    .foregroundColor(colorScheme == .light ? .green : .yellow)
            }
        }
    }
}

#Preview("light") {
        DarkModeAdaptive()
            .preferredColorScheme(.light)
}

#Preview("dark") {
        DarkModeAdaptive()
            .preferredColorScheme(.dark)
}
