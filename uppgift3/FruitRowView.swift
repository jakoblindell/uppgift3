//
//  FruitRowView.swift
//  uppgift3
//
//  Created by Jakob Lindell on 2023-10-15.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit: Fruit
    
    var body: some View {
        HStack {
            Text(fruit.emoji)
            Text(fruit.name)
                .font(.title2)
        }
    }
}

#Preview {
    FruitRowView(
        fruit: Fruit(name: "Pear", emoji: "🍐")
    )
}
