//
//  GradientsAtrr.swift
//  l1
//
//  Created by Ankit Ammanagi on 29/05/26.
//

import SwiftUI

struct GradientsAtrr: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(
//                        colors: [Color(
//                            #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
//                        ),Color(
//                            #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
//                        )]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
                
                
                RadialGradient(
                    colors: [.red, .blue],
                    center: .center,
                    startRadius: 0, endRadius: 100)
                
                
//                AngularGradient(
//                    gradient: Gradient(
//                        colors: [Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)),.blue]),         center: .center,
//                    angle: Angle(degrees: 90)
//                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsAtrr()
}
