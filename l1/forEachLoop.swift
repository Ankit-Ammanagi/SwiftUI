//
//  forEachLoop.swift
//  l1
//
//  Created by Ankit Ammanagi on 02/06/26.
//

import SwiftUI

struct forEachLoop: View {
    var body: some View {
        
//        VStack(spacing: 10){
//            ForEach(data.indices, id: \.self) { index in
//                Text("\(data[index]) : \(index+1)")
//            }
//        }
        
        ScrollView{
            ForEach(1..<50) { _ in
                ScrollView(.horizontal){
                    LazyHStack{
                        ForEach(0..<100) { idx in
                            Rectangle()
                                .frame(width: 300, height: 200)
                                .cornerRadius(10)
                        }
                    }
                }
            }
        }
        .padding()
        .scrollIndicators(.hidden ,axes: .vertical)
    }
}

#Preview {
    forEachLoop()
}
