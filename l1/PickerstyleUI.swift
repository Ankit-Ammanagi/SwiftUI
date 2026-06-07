//
//  PickerstyleUI.swift
//  l1
//
//  Created by Ankit Ammanagi on 07/06/26.
//

import SwiftUI

struct PickerstyleUI: View {
    @State var age: String = "18"
    
    @State private var selection = "Most Recent"
    let availableSelections = ["Most Liked", "Most Popular", "Most Recent"]
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = .brown
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor : UIColor.white,
            .backgroundColor : UIColor.systemPink
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
        
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            VStack {
                Picker("", selection: $selection) {
                    ForEach(availableSelections, id: \.self) { sele in
                        Text(sele)
                            .tag(sele)
                    }
                }
                .pickerStyle(.segmented)
            }
            
            Spacer()
            
            VStack {
                Menu {
                    Picker("Selection", selection: $selection) {
                        ForEach(availableSelections, id: \.self) { select in
                            Text(select).tag(select)
                        }
                    }
                } label: {
                    HStack {
                        Text(selection)
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                    }
                    .padding()
            
            Spacer()
            
            VStack{
                HStack{
                    Text("Age: \(age)")
                        .font(.title)
                }
                
                Picker(selection: $age) {
                    ForEach(18..<100) { num in
                        Text("\(num)")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .tag("\(num)")
                    }
                } label: {
                    Text("picker")
                }
                .pickerStyle(.wheel)
                .background(Color.blue.opacity(0.05))

            }
        }
    }
}

#Preview {
    PickerstyleUI()
}
