//
//  Images.swift
//  l1
//
//  Created by Ankit Ammanagi on 29/05/26.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("sampleImage")
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFill()
            .scaledToFit()
            .foregroundColor(Color.red)
            .frame(width: 300, height: 300)
//            .clipped()
//            .cornerRadius(100)
            .clipShape(
//                Circle()
//                Ellipse()
                RoundedRectangle(cornerRadius: 50)
            )

    }
}

#Preview {
    Images()
}
