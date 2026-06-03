//
//  TransitionsBootcamp.swift
//  l1
//
//  Created by Ankit Ammanagi on 03/06/26.
//

import SwiftUI

struct TransitionsBootcamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Container@*/VStack/*@END_MENU_TOKEN@*/ {
                    Button("Button") {
                        //                    showView.toggle()
                        withAnimation(.spring(duration: 1)) {
                            showView.toggle()
                        }
                    }
                    .font(.title)
                }
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 20)
                    .containerRelativeFrame(.vertical) { size, axis in
                        size * 0.5
                    }
//                    .animation(.easeIn(duration: 10), value: showView)
//                    .transition(.opacity)
//                    .transition(.opacity.animation(.easeIn(duration: 1)))
//                    .transition(.move(edge: .bottom).animation(.spring(duration: 5)))
//                    .transition(.move(edge: .leading))
//                    .transition(AnyTransition.scale.animation(.easeInOut))
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
            }
        }
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

#Preview {
    TransitionsBootcamp()
}
