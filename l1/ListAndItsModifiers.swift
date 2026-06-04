//
//  ListAndItsModifiers.swift
//  l1
//
//  Created by Ankit Ammanagi on 04/06/26.
//

import SwiftUI

struct fruitItem: Identifiable {
    let id: UUID
    let name: String
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}

struct ListAndItsModifiers: View {
    
    @State var fruits: [fruitItem] = [
        fruitItem(name: "Apple"),
        fruitItem(name: "Banana"),
        fruitItem(name: "Cherry"),
        fruitItem(name: "Date"),
        fruitItem(name: "Elderberry"),
        fruitItem(name: "Fig"),
        fruitItem(name: "Grape"),
        fruitItem(name: "Honeydew")
    ]
    
    @State var veggies: [fruitItem] = [
        fruitItem(name: "Carrot"),
        fruitItem(name: "Broccoli"),
        fruitItem(name: "Spinach"),
        fruitItem(name: "Potato")
    ]
    
    @State var closeList: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                    Section(header: Text("Fruits")) {
                        ForEach(fruits, id: \.id) { fruit in
                            Text(fruit.name)
                        }
                        .onDelete(perform: deleteItem)
                        .onMove(perform: moveItem)
                    }
                    .listRowBackground(Color.red)

      
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.id) { veggie in
                        Text(veggie.name)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        fruits.append(fruitItem(name: "Coconut"))
                    } label: {
                        Image(systemName: "plus")
                    }

                }

            }
        }
    }
    
    func deleteItem(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func moveItem(_ source: IndexSet, _ destination: Int) {
            fruits.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    ListAndItsModifiers()
}
