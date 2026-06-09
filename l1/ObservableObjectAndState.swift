//
//  ObservableObjectAndState.swift
//  l1
//
//  Created by Ankit Ammanagi on 09/06/26.
//

import SwiftUI
import Observation

@Observable
class FruitModelClass  {
    
    var fruitsArray: [FruitModel] = []
    
    init() {
        addFruits()
    }
    
    func addFruits() {
        fruitsArray.append(FruitModel(name: "Banana", cnt: 3))
        fruitsArray.append(FruitModel(name: "Cherry", cnt: 5))
        fruitsArray.append(FruitModel(name: "Date", cnt: 1))
        fruitsArray.append(FruitModel(name: "Elderberry", cnt: 4))
    }
    
    func deleteFruit(index: IndexSet) {
        fruitsArray.remove(atOffsets: index)
    }
}

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    var name: String
    var cnt: Int
}

struct ObservableObjectAndState: View {
    
    @State var fruitsViewModel: FruitModelClass = FruitModelClass()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruitsViewModel.fruitsArray) { fruit in
                    HStack {
                        Text(fruit.name)
                        
                        Spacer()
                        
                        Text(String(fruit.cnt))
                    }
                }
                .onDelete(perform: fruitsViewModel.deleteFruit)
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: subView(fruitsViewModel: fruitsViewModel)) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct subView: View {
    
    @Bindable var fruitsViewModel: FruitModelClass
    
    var body: some View {
        List {
            ForEach($fruitsViewModel.fruitsArray) { $fruit in
                HStack {
                    Text(fruit.name)
                    
                    Spacer()
                    
                    Text(String(fruit.cnt))
                    
                    Stepper("kjnkjn", value: $fruit.cnt, in: 0...100)
                }
            }
            .onDelete(perform: fruitsViewModel.deleteFruit)
        }
    }
}

#Preview {
    ObservableObjectAndState()
}
