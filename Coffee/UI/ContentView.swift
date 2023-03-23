//
//  ContentView.swift
//  Coffee
//
//  Created by Hans Rietmann on 23.03.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach((0..<10)) { index in
                        NavigationLink {
                            
                        } label: {
                            CoffeeCell()
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
        ContentView()
    }
}
