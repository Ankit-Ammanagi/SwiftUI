//
//  SubAndExtractedViews.swift
//  l1
//
//  Created by Ankit Ammanagi on 03/06/26.
//

import SwiftUI

struct SubAndExtractedViews: View {
    var body: some View {
        
        ZStack{
            Color(.blue).ignoresSafeArea()
            
            //            HStack{
            //                Rectangle()
            //                    .frame(width: 100, height: 100)
            //                    .cornerRadius(20)
            //                    .overlay {
            //                        VStack {
            //                            Text("1")
            //                                .underline()
            //
            //                            Text("Apple")
            //                        }
            //                        .foregroundColor(.white)
            //                        .font(.title)
            //                    }
            //            }
            
            Cards
           
        }
    }
    
    var Cards: some View{
        HStack{
            CardView(count: 2,label: "Apple",color: .red)
            CardView(count: 10,label: "Orange",color: .orange)
        }
    }
}


struct CardView: View {
    let count: UInt8
    let label: String
    let color: Color
    
    
    var body: some View {
        VStack(spacing: 10){
            Text("\(count)")
                .font(.title2)
                .underline()
            
            Text(label)
                .font(.title)
        }
        .foregroundColor(.white)
        .padding()
        .background(color)
        .cornerRadius(20)
    }
}

#Preview {
    SubAndExtractedViews()
}
