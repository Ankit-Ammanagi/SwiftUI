//
//  ColorsAttr.swift
//  l1
//
//  Created by Ankit Ammanagi on 29/05/26.
//

import SwiftUI

struct ColorsAttr: View {
    var body: some View {
        Rectangle()
            .fill(
//                Color.red
//                Color(
//                    #colorLiteral(red: 0.2852540612, green: 0.302142024, blue: 0.3438899517, alpha: 1)
//                )
//                Color(UIColor.systemBlue)
                Color("CustomColor")
            )
//            .stroke(Color.blue, lineWidth: 10)
            .frame(width: 300, height: 300)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(5), radius: 10, x: 10, y: 10)
    }
}

#Preview {
    ColorsAttr()
}
