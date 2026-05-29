//
//  framesAndAlignments.swift
//  l1
//
//  Created by Ankit Ammanagi on 29/05/26.
//

import SwiftUI

struct framesAndAlignments: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.blue)
//            .frame(width: 300, height: 300, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            
//            .background(Color.red)
            .frame(width: 150, height: 100)
            .background(Color.red)
            .frame(width: 200, height: 100)
            .background(Color.yellow)
            .frame(maxWidth: .infinity)
            .background(Color.brown)
            .frame(maxHeight: .infinity)
            .background(Color.indigo)
//            .scaledToFit()
//            .ignoresSafeArea()
    }
}

#Preview {
    framesAndAlignments()
}
