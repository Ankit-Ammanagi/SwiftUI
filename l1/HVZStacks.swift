//
//  HVZStacks.swift
//  l1
//
//  Created by Ankit Ammanagi on 29/05/26.
//

import SwiftUI

struct HVZStacks: View {
    var body: some View {
        // Zstack does not have spacing
//        VStack(alignment: .center, spacing: 0) {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(Color.brown)
//                .frame(width: 100, height: 100)
//        }
        
        
//        ZStack{
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 300, height: 500)
//            
//            VStack{
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 100, height: 100)
//                
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 200, height: 200)
//                
//                HStack(spacing: 10) {
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 50, height: 50)
//                    
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 50, height: 50)
//                    
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 50, height: 50)
//                }
//                .background(Color.black)
//            }
//            .background(Color.red)
//        }
        
        VStack(spacing: 50) {
        
        ZStack{
            Circle()
                .frame(width: 100, height: 100)
            
            Text("1")
                .font(.title3)
                .foregroundColor(.white)
        }
        
        Text("1")
            .foregroundColor(.white)
            .background(
                Circle()
                    .frame(width: 100, height: 100)
            )
            
        }
    }
}

#Preview {
    HVZStacks()
}
