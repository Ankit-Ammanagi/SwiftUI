//
//  ToggleUI.swift
//  l1
//
//  Created by Ankit Ammanagi on 07/06/26.
//

import SwiftUI

struct ToggleUI: View {
    
    @State var isOnline: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status: \(isOnline ? "Online" : "Offline")")
                    .font(.headline)
            }
            
            Toggle(isOn: $isOnline) {
                Text("Toggle Status")
            }
            .padding(.horizontal, 30)
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
    }
}

#Preview {
    ToggleUI()
}
