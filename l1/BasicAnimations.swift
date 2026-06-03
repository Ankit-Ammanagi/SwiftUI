//
//  BasicAnimations.swift
//  l1
//
//  Created by Ankit Ammanagi on 03/06/26.
//

import SwiftUI

struct BasicAnimations: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack{
            Button("Animate") {
                withAnimation(
                    Animation.easeInOut(duration:  0.6)
                        .repeatCount(6, autoreverses: true))
                    {
                    isAnimating.toggle()
                }
            }
            .font(.largeTitle)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimating ? 25 : 10)
                .fill(isAnimating ? .red : .black)
                .frame(width: isAnimating ? 100 : 150, height: isAnimating ? 100 : 110)
                .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
                .offset(x: 0, y: isAnimating ? 300 : 0)
            
            
            Spacer()
        }
    }
}

#Preview {
    BasicAnimations()
}
