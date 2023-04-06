//
//  ContentView.swift
//  Coffee
//
//  Created by Hans Rietmann on 23.03.23.
//

import SwiftUI

struct ContentView: View {
    
    let coffees: [CoffeeModel]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(coffees) { coffee in
                        NavigationLink {
                            CoffeeDetailView(coffee: coffee)
                        } label: {
                            CoffeeCell(coffee: coffee)
                        }
                    }
                }
            }
            .navigationTitle("Coffee")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coffees: CoffeeModel.dummies)
            .colorInvert()
            .dynamicTypeSize(.xxxLarge)
            .preferredColorScheme(.dark)
            .underline()
        ContentView(coffees: CoffeeModel.dummies)
    }
}
