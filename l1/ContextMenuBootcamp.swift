//
//  ContextMenuBootcamp.swift
//  l1
//
//  Created by Ankit Ammanagi on 05/06/26.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var bgColor: Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(systemName: "house.fill")
            Text("Swift-UI")
            Text("Context Menu")
        }
        .font(.title)
        .foregroundColor(.white)
        .padding()
        .background(bgColor)
        .cornerRadius(20)
        .contextMenu(menuItems: {
            Button {
                bgColor = .red
            } label: {
                HStack{
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            }
            
            Button {
                bgColor = .orange
            } label: {
                HStack{
                    Text("Share")
                    Image(systemName: "shareplay")
                }
            }
            
            Button {
                bgColor = .red
            } label: {
                HStack{
                    Text("Cancel")
                    Image(systemName: "x.circle.fill")
                }
            }

        })
    }
}

#Preview {
    ContextMenuBootcamp()
}
