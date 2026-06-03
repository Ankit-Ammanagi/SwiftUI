//
//  SheetAndFullCoverSheet.swift
//  l1
//
//  Created by Ankit Ammanagi on 03/06/26.
//

import SwiftUI

struct SheetAndFullCoverSheet: View {
    @State var showScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            
            Button {
                showScreen.toggle()
            } label: {
                Text("Open")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.orange)
                    .cornerRadius(20)
            }
            .fullScreenCover(isPresented: $showScreen, content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showScreen) {
////                SecondScreen(showScreen: $showScreen)
//                SecondScreen()
//            }

        }
    }
}

struct SecondScreen: View {
//    @Binding var showScreen: Bool
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.red
                .ignoresSafeArea()
            
            Button {
//                showScreen.toggle()
                dismiss()
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
    SheetAndFullCoverSheet()
}
