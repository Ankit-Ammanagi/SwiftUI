//
//  CustomModels.swift
//  l1
//
//  Created by Ankit Ammanagi on 09/06/26.
//

import SwiftUI

struct User: Identifiable {
    let id: String = UUID().uuidString
    let userName: String
    let displayName: String
    let cnt: Int
    let verified: Bool
}

struct CustomModels: View {
    
    let users: [User] = [
        User(userName: "JohnDoe", displayName: "John Doe", cnt: 100, verified: false),
        User(userName: "JaneSmith", displayName: "Jane Smith", cnt: 5, verified: true),
        User(userName: "AliceW", displayName: "Alice Wonderland", cnt: 10, verified: false),
        User(userName: "BobM", displayName: "Bob Marley", cnt: 20, verified: true)
    ]
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(users) { user in
                    HStack{
                        Circle()
                            .frame(width: 50, height: 50)
                        
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        HStack{
                            if user.verified {
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.blue)
                            }
                            
                            VStack{
                                Text(String(user.cnt))
                                    .font(.headline)
                                Text("Followers")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    CustomModels()
}
