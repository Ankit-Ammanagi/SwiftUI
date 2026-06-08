//
//  SliderUI.swift
//  l1
//
//  Created by Ankit Ammanagi on 08/06/26.
//

import SwiftUI

struct SliderUI: View {
    @State var sliderVal: Double = 0
    @State var color: Color = .black
    
    var body: some View {
        VStack {
            HStack {
                Text("Slider value")
                Text(String(format: "%.f", sliderVal))
            }
            .foregroundColor(color)
                
            Slider(value: $sliderVal, in: 0...100, step: 5) {
                Text("Label")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("100")
            } onEditingChanged: { _ in
                color = .red
            }
            .padding(.horizontal, 20)
            .tint(Color.red)
        }
    }
}

#Preview {
    SliderUI()
}
