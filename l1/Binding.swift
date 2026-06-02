//
//  Binding.swift
//  l1
//
//  Created by Ankit Ammanagi on 03/06/26.
//

import SwiftUI

struct BindingView: View {
    @State var backgroundColor: Color = Color.blue
    @State var label: String = "Ankit"
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            ButtonView(backgroundColor: $backgroundColor, label: $label)
        }
        
        PropsDrill(label: label)
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @Binding var label: String
    
    var body: some View {
        Button {
            backgroundColor = Color.orange
            label = "Amg"
        } label: {
            Text("button")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(.red)
                .cornerRadius(20)
        }

    }
}

struct PropsDrill: View {
    let label: String
    
    var body: some View {
        Text(label)
            .foregroundColor(.black)
    }
}

#Preview {
    BindingView()
}
