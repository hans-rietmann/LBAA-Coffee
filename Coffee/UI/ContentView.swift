//
//  ContentView.swift
//  Coffee
//
//  Created by Hans Rietmann on 23.03.23.
//

import SwiftUI

struct ContentView: View {
    
    @State var coffees: [CoffeeModel] = []
    @StateObject var model = ContentViewModel(coffeeService: RemoteCoffeeLoader())
    
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
        .onAppear {
            Task {
                do {
                    coffees = try await model.loadCoffees()
                } catch {
                    print(error)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorInvert()
            .dynamicTypeSize(.xxxLarge)
            .preferredColorScheme(.dark)
            .underline()
    }
}
