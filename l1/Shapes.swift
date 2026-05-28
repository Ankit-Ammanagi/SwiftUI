//
//  SwiftUIView.swift
//  l1
//
//  Created by Ankit Ammanagi on 28/05/26.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        
//        Circle()
//        Rectangle()
//        Ellipse()
//        Capsule()
        RoundedRectangle(cornerRadius: 10)
//            .fill()
//            .foregroundColor(Color.pink)
//            .stroke(Color.red, lineWidth: 10)
//            .strokeBorder(Color.blue, style:StrokeStyle(lineWidth: 13, lineCap: .round,dash: [20]))
//            .trim(from: 0.5, to: 1)
            .rotation(Angle.degrees(360))
            .frame(width: 200, height: 500)
    }
}

#Preview {
    SwiftUIView()
}
