//
//  SafeUnwrapOptionals.swift
//  l1
//
//  Created by Ankit Ammanagi on 09/06/26.
//

import SwiftUI

struct SafeUnwrapOptionals: View {
    
    @State var optionalText: String? = nil
    @State var userId: String? = "123"
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("Optinals")
                    .font(.title3)
                
                if isLoading {
                    ProgressView()
                }
                
                if let text = optionalText {
                    Text(text)
                        .font(.title)
                }
                
                Spacer()
            }
            .navigationTitle("Safe Unwrap Optionals")
            .onAppear{
                loadData()
            }
        }
    }
    
    func loadData() -> Void {
        if let userId = userId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                isLoading = false
                optionalText = "New Text \(userId)"
            }
        } else {
            optionalText = "No user id found"
        }
    }
}

#Preview {
    SafeUnwrapOptionals()
}
