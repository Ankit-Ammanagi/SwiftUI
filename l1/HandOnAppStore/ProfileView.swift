//
//  ProfileView.swift
//  l1
//
//  Created by Ankit Ammanagi on 10/06/26.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                Text(currentUserName ?? "No name")
                    .font(.title)
                
                Text("Age: \(currentUserAge ?? 0)")
                    .font(.title2)
                
                Text("Gender: \(currentUserGender ?? "No gender")")
                    .font(.title2)
            }
            .foregroundStyle(.white)
            .padding(30)
            .background(Color.purple)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Spacer()
            
            Button("Sign out") {
                signOut()
            }
            .padding()
            .font(.headline)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .background(Color.red)
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        
        
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
        
    }
}

#Preview {
    ProfileView()
}
