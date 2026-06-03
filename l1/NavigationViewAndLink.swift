//
//  NavigationViewAndLink.swift
//  l1
//
//  Created by Ankit Ammanagi on 04/06/26.
//

import SwiftUI

struct NavigationViewAndLink: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(alignment: .center, spacing: 20) {
                    NavigationLink("next") {
                        nextScreen()
                    }
                    
                                    ForEach(1...40, id: \.self) { index in
                                        Text("Hello, World! Item \(index)")
                                            .font(.headline)
                                            .padding(.horizontal)
                                    }
                                }
            }
            .navigationTitle("nav")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarBackButtonHidden(false)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink {
                        nextScreen()
                    } label: {
                        Image(systemName: "person")
                    }

                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "person.fill")
                }
            }
        }
    }
}

struct nextScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            LazyVStack(alignment: .center, spacing: 20) {
                
                Button {
                    dismiss()
                } label: {
                    Text("Close")
                }

                
                NavigationLink("next2") {
                    Text("Hello")
                }

                                ForEach(1...40, id: \.self) { index in
                                    Text("Hello, World! Item \(index)")
                                        .font(.headline)
                                        .padding(.horizontal)
                                }
                            }
        }
        .navigationTitle("sc2")
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NavigationViewAndLink()
}
