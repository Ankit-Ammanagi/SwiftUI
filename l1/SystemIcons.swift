//
//  SystemIcons.swift
//  l1
//
//  Created by Ankit Ammanagi on 29/05/26.
//

import SwiftUI

struct SystemIcons: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Image(systemName: "person.fill")
            .renderingMode(.original)
//            .resizable()
//            .font(.title3)
            .font(.system(size: 200))
//            .aspectRatio(contentMode: .fill)
//            .scaledToFit()
            .scaledToFill()
            .foregroundColor(Color.red)
            .frame(width: 300, height: 300)
            .clipped()
    }
}

#Preview {
    SystemIcons()
}
