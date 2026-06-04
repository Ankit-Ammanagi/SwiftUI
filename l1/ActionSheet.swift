//
//  ActionSheet.swift
//  l1
//
//  Created by Ankit Ammanagi on 04/06/26.
//

import SwiftUI

struct ActionSheet: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Circle()
                    .frame(width: 30)
                Text("@Username")
                
                Spacer()
                
                Button {
                    showSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
            }
            .padding()
            
            Rectangle()
                .aspectRatio(1.0 , contentMode: .fit)
        }
        .confirmationDialog("Sheet", isPresented: $showSheet) {
            Button("Delete Profile", role: .destructive) {
                print("Delete Profile")
            }
            
            Button("Backup Data") {
                print("Backup Data")
            }
            
            Button("Cancel", role: .cancel) {
                print("Cancel")
            }
                
        } message: {
            Text("This is the message")
        }

    }
}

#Preview {
    ActionSheet()
}
