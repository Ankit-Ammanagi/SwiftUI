//
//  Padding.swift
//  l1
//
//  Created by Ankit Ammanagi on 29/05/26.
//

import SwiftUI

struct Padding: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.red)
//            .padding()
//            .background(Color.blue)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(Color.yellow)
        
        VStack(alignment: .leading){
            Text("Hello, world!".capitalized)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            
            Text("This is the text to make it ui feel like this is the description of the the pop - up")
                .font(.title3)
        }
        .padding(15)
//        .background(Color.red)ColorPicker(/*@START_MENU_TOKEN@*/"Title"/*@END_MENU_TOKEN@*/, selection: /*@START_MENU_TOKEN@*/.constant(.red)/*@END_MENU_TOKEN@*/)
        .frame(width: 350)
        .background(
            Color.white
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.5), radius: 50, x: 0, y: 10)
        )
//        .shadow(color: Color.black, radius: 5, x: 0, y: 5)
    }
}

#Preview {
    Padding()
}
