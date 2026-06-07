//
//  TextEditorUI.swift
//  l1
//
//  Created by Ankit Ammanagi on 07/06/26.
//

import SwiftUI

struct TextEditorUI: View {
    @State var text: String = "Enter more details here..."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack{
                    TextEditor(text: $text)
                        .frame(height: 200)
                        .scrollContentBackground(.hidden)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                        }
                    
                    Button {
                        savedText = text
                    } label: {
                        Text("Save")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    
                    Text(savedText)

                    Spacer()
                }
                .padding()
                .navigationTitle("Text Editor")
            }
        }
    }
}

#Preview {
    TextEditorUI()
}
