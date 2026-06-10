//
//  AppStorageUI.swift
//  l1
//
//  Created by Ankit Ammanagi on 10/06/26.
//

import SwiftUI

struct AppStorageUI: View {
    
    @AppStorage("name") var currentUserName: String = "Unknown"
    
    var body: some View {
        VStack {
            Text(currentUserName)
                .font(.largeTitle)
            
            Button("Save") {
                currentUserName = "Ankit Ammanagi"
            }
            
            Button("Clear") {
                currentUserName = "Unknown"
            }
        }
    }
}

#Preview {
    AppStorageUI()
}
