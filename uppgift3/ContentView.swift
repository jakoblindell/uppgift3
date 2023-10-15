//
//  ContentView.swift
//  uppgift3
//
//  Created by Jakob Lindell on 2023-10-15.
//

import SwiftUI

struct ContentView: View {
    
   let fruits = [
    Fruit(name: "Apelsin", emoji: "🍊"),
    Fruit(name: "Banan", emoji: "🍌"),
    Fruit(name: "Citron", emoji: "🍋")
   ]
    
    var body: some View {
        NavigationStack {
            VStack {
                List(fruits, id: \.self.name) { fruit in
                    NavigationLink(
                        destination: FruitDetailsView(
                            selectedFruit: fruit
                        )
                    ) {
                        FruitRowView(fruit: fruit)
                    }
                }
                .scrollContentBackground(.hidden)
            }
            .navigationTitle("Fruits")
        }
        
    }
}

struct Fruit {
    let name: String
    let emoji: String
}

#Preview {
    ContentView()
}
