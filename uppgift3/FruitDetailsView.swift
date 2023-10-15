//
//  FruitDetailsView.swift
//  uppgift3
//
//  Created by Jakob Lindell on 2023-10-15.
//

import SwiftUI

struct FruitDetailsView: View {
    
    var selectedFruit: Fruit
    
    var body: some View {
        VStack {
            Text(selectedFruit.emoji)
                .font(.largeTitle)
            Text(selectedFruit.name)
                .font(.title)
                
        }
    }
}

#Preview {
    FruitDetailsView(
        selectedFruit: Fruit(name: "Pear", emoji: "🍐")
    )
}
