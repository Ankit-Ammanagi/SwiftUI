//
//  initAndEnums.swift
//  l1
//
//  Created by Ankit Ammanagi on 02/06/26.
//

import SwiftUI

struct initAndEnums: View {
    let count:UInt8
    let name:String
    let cardColor:Color
    
    init(count: UInt8, name: Fruite) {
        self.count = count
        self.name = name.rawValue.capitalized
        self.cardColor = colorMap[name] ?? .gray
        
    }
    
    let mapName: [Fruite:String] = [
        .apple: "Apple",
        .orange: "Orange"
    ]
    
    let colorMap: [Fruite: Color] = [
                .apple: .red,
                .orange: .orange
            ]
    
    enum Fruite: String {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 10){
            Text("\(count)")
                .font(.title)
                .underline()
            
            Text(name)
                .font(.largeTitle)
        }
        .frame(width: 150 ,height: 150)
        .background(cardColor)
        .cornerRadius(20)
    }
}

#Preview {
    HStack(spacing: 20){
        initAndEnums(count: 5, name: .orange)
        initAndEnums(count: 100, name: .apple)
    }
}
