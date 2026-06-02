//
//  forEachLoop.swift
//  l1
//
//  Created by Ankit Ammanagi on 02/06/26.
//

import SwiftUI

struct forEachLoop: View {
    let data: [String] = [
        "Ankit",
        "Aryan",
        "Tushar",
        "Chaitra",
        "Reddy"
    ]
    var body: some View {
        VStack(spacing: 10){
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]) : \(index+1)")
            }
        }
    }
}

#Preview {
    forEachLoop()
}
