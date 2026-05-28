//
//  ContentView.swift
//  l1
//
//  Created by Ankit Ammanagi on 28/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
        Text("Hello, world! This is a multiline text containing a lot of text to test the multilineTextAlignment".capitalized)
            .font(.title3)
//            .fontWeight(.bold)
//            .multilineTextAlignment(.leading)
            .underline(true, color: Color.red)
            .foregroundColor(.blue)
            .bold()
            .frame(width: 300, height: 300, alignment: .bottom)
            .italic()
            .strikethrough(true, color: Color.black)
//            .kerning(1)
//            .baselineOffset(1)
            .minimumScaleFactor(0.4)
    }
}

#Preview {
    ContentView()
}
