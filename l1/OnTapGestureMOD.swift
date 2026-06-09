//
//  OnTapGestureMOD.swift
//  l1
//
//  Created by Ankit Ammanagi on 09/06/26.
//

import SwiftUI

struct OnTapGestureMOD: View {
    @State var isTapped: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200)
                .foregroundColor(isTapped ? Color.green : Color.red)
            
            Button {
                isTapped.toggle()
            } label: {
                Text("Button")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(20)
            }
            
            Text("Button")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(20)
                .onTapGesture(count: 2) {
                    isTapped.toggle()
                }
            
            Spacer()
        }
        .padding(20)
    }
}

#Preview {
    OnTapGestureMOD()
}
