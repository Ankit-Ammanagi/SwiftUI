//
//  EnvironmentObjectUI.swift
//  l1
//
//  Created by Ankit Ammanagi on 10/06/26.
//

import SwiftUI

@Observable
class EnvironmentViewModel {
    var dataArray: [String] = []
    
    init() {
        addFruits()
    }
    
    func addFruits() {
        self.dataArray.append(contentsOf: ["Apple", "Mango", "Banana", "Grapes"])
    }
}

struct EnvironmentObjectUI: View {
    
    @State var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { fruit in
                    NavigationLink {
                        FirstSubView(fruit: fruit)
                    } label: {
                        Text(fruit)
                    }

                }
            }
            .navigationTitle("List")
        }
        .environment(viewModel)
    }
}

struct FirstSubView: View {
    
    let fruit: String
//    @Bindable var viewModel: EnvironmentViewModel
    
    var body: some View {
            ZStack {
                Color.green.ignoresSafeArea()
                
                NavigationLink {
//                    SecondSubView(viewModel: viewModel)
                    SecondSubView()
                } label: {
                    Text(fruit)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange, in: RoundedRectangle(cornerRadius: 12))
                }

            }
    }
}

struct SecondSubView: View {
    
//    @Bindable var viewModel: EnvironmentViewModel
    @Environment(EnvironmentViewModel.self) var viewModel
    
    var body: some View {
        List {
            ForEach(viewModel.dataArray, id:\.self) { val in
                Text(val)
            }
        }
    }
}

#Preview {
    EnvironmentObjectUI()
}
