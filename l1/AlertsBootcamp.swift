//
//  AlertsBootcamp.swift
//  l1
//
//  Created by Ankit Ammanagi on 04/06/26.
//

import SwiftUI

struct AlertsBootcamp: View {
    @State var showAlert: Bool = false
    @State var bgColor: Color = .red
    
    var body: some View {
        ZStack{
            bgColor.ignoresSafeArea()
            
            Button("Show Alert") {
                showAlert.toggle()
            }
            .alert("Alert", isPresented: $showAlert) {
                getAlertButtons()
                
            } message: {
                Text("This is the alert message")
            }

        }
    }
    
    @ViewBuilder
        func getAlertButtons() -> some View {
            Button(role: .cancel) {
                bgColor = .blue
            } label: {
                Text("Cancel")
            }
            
            Button(role: .destructive) {
                bgColor = .green
            } label: {
                Text("Change")
            }
        }
}

#Preview {
    AlertsBootcamp()
}
