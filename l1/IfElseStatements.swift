//
//  IfElseStatements.swift
//  l1
//
//  Created by Ankit Ammanagi on 03/06/26.
//

import SwiftUI

struct IfElseStatements: View {
    @State var showCircle: Bool = false
    @State var showSquare: Bool = false
    
    var body: some View {
        
        Button("Show circle: \(showCircle.description)") {
//            showCircle.toggle()
            showCircle = !showCircle
        }
        
        Button("Show square: \(showSquare.description)") {
            showSquare = !showSquare
        }
        
        if showCircle{
            Circle()
                .frame(width: 100)
        }
        
        if showSquare{
            Rectangle()
                .frame(width: 100, height: 100)
                
        }
        
        if !showSquare && !showCircle{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: 100)
        }
        
        Spacer()
    }
}

#Preview {
    IfElseStatements()
}
