//
//  UsingSheetTransitionOffset.swift
//  l1
//
//  Created by Ankit Ammanagi on 04/06/26.
//

import SwiftUI

struct UsingSheetTransitionOffset: View {
    @State var showScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            
            Button {
                
                withAnimation(Animation.spring(duration: 1)){
                    showScreen.toggle()
                }
                
            } label: {
                Text("Open")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.orange)
                    .cornerRadius(20)
            }
            
            //M1
//            .sheet(isPresented: $showScreen) {
//                SecondScreen2()
//            }
            
            //M2
//            ZStack{
//                if showScreen {
//                    SecondScreen2(showScreen: $showScreen)
//                        .transition(.move(edge: .bottom))
//                }
//            }.zIndex(2.0)
            
            //M3
            GeometryReader { geometry in
                    SecondScreen2(showScreen: $showScreen)
                        .offset(y: showScreen ? 0 : geometry.size.height)
                }
        }
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

struct SecondScreen2: View {
    @Binding var showScreen: Bool
//    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red
                .ignoresSafeArea()
            
            Button {
                withAnimation(Animation.spring(duration: 0.5)){
                    showScreen.toggle()
                }
//                showScreen.toggle()
//                dismiss()
            } label: {
                
                Image(systemName: "xmark")
                    .font(.title)
                    .foregroundColor(.red)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.orange)
                    .cornerRadius(20)
            }
        }
    }
}

#Preview {
    UsingSheetTransitionOffset()
}
