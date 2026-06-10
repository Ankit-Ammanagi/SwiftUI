//
//  AppStorageHandOn.swift
//  l1
//
//  Created by Ankit Ammanagi on 10/06/26.
//

import SwiftUI

struct AppStorageHandOn: View {
    
    @AppStorage("signed_in") var isSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [Color.red, Color.orange]),
                center: .topLeading,
                startRadius: 5,
                endRadius: 200)
            .ignoresSafeArea()
            
            if isSignedIn {
                ProfileView()
            }else {
                OnboardingView()
            }
            
        }
    }
}

#Preview {
    AppStorageHandOn()
}
