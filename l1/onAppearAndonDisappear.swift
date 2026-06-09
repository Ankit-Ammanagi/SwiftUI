//
//  onAppearAndonDisappear.swift
//  l1
//
//  Created by Ankit Ammanagi on 09/06/26.
//

import SwiftUI

struct onAppearAndonDisappear: View {
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack {
                    ForEach(0..<20) { _ in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                            .onDisappear{
                                count -= 1
                            }
                    }
                }
                .navigationTitle("Count: \(count)")
            }
        }
    }
}

#Preview {
    onAppearAndonDisappear()
}
