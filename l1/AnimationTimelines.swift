//
//  AnimationTimelines.swift
//  l1
//
//  Created by Ankit Ammanagi on 03/06/26.
//

import SwiftUI

struct AnimationTimelines: View {
    @State var isAnimating: Bool = false
    let time: Double = 1
    
    
    var body: some View {
        VStack{
            Button("Animate") {
                isAnimating.toggle()
            }
            .font(.largeTitle)
            
            Spacer()
            
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 300 : 50,height: 100)
                    .animation(
                        .spring(
                            response: 0.5,
                            dampingFraction: 0.2
                        ), value: isAnimating)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 300 : 50,height: 100)
                    .animation(.linear(duration: time), value: isAnimating)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 300 : 50,height: 100)
                    .animation(.easeIn(duration: time), value: isAnimating)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 300 : 50,height: 100)
                    .animation(.easeInOut(duration: time), value: isAnimating)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: isAnimating ? 300 : 50,height: 100)
                    .animation(.easeOut(duration: time), value: isAnimating)
            }
            
            Spacer()
        }
    }
}

#Preview {
    AnimationTimelines()
}
