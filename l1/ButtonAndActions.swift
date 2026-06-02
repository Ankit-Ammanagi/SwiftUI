//
//  ButtonAndActions.swift
//  l1
//
//  Created by Ankit Ammanagi on 02/06/26.
//

import SwiftUI

struct ButtonAndActions: View {
    
    @State var title: String = "Title"
    
    var body: some View {
        VStack(spacing: 20){
            Text(title)
                .font(.title)
            
            Button("Button") {
                self.title = "Button #1"
            }.font(.title2)
            
            
            Button {
                self.title = "Button #2"
            } label: {
                Text("Save")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Color.blue
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.5),radius: 10)
                    )
                
            }
            
            
            Button {
                self.title = "Button #3"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 70)
                    .shadow(color: .black.opacity(0.5) ,radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundColor(.brown)
                    }

            }
            
            
            Button {
                self.title = "Button #4"
            } label: {
                Text("save".uppercased())
                    .foregroundColor(.gray)
                    .padding()
                    .background(
                        Capsule()
                            .fill(Color.white)
                            .stroke(Color.gray, lineWidth: 0.3)
                            .shadow(color: Color.black.opacity(0.5), radius: 10)
                    )
                    
            }
        
        }
    }
}

#Preview {
    ButtonAndActions()
}
