//
//  TextFieldBootcamp.swift
//  l1
//
//  Created by Ankit Ammanagi on 05/06/26.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var entryFields: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack{
                TextField("Enter your name..", text: $textFieldText)
                    .font(.title2)
                    .padding()
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(10)
                
                Button {
                    if(textFieldText.count > 3){
                        addEntries()
                    }
                } label: {
                    Text("Submit")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(isTextFieldValid() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        
                }
                .disabled(!isTextFieldValid())

                
                ForEach(entryFields, id: \.self) { entry in
                    Text(entry)
                }
                
                Spacer()
            }
        }
        .navigationTitle("TextField Bootcamp")
        .padding()
            
    }
    
    func isTextFieldValid() -> Bool{
        if(textFieldText.count < 3){
            return false
        }
        
        return true
    }
    
    func addEntries(){
        entryFields.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
