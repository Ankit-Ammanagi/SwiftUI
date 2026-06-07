//
//  ColorPickerUI.swift
//  l1
//
//  Created by Ankit Ammanagi on 08/06/26.
//

import SwiftUI

struct ColorPickerUI: View {
    @State var bgColor: Color = .white
    
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()
            
            ColorPicker(selection: $bgColor, supportsOpacity: true) {
                Text("Pick Color")
            }
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(Color.black)
            .cornerRadius(20)
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    ColorPickerUI()
}
