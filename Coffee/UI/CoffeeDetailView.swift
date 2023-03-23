//
//  CoffeeDetailView.swift
//  Coffee
//
//  Created by Hans Rietmann on 23.03.23.
//

import SwiftUI

struct CoffeeDetailView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                Image(systemName: "cup.and.saucer")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .frame(maxWidth: .infinity)
                    .frame(height: 400)
                    .background(Color.gray)
                
                Text("Description")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding()
                
                VStack(alignment: .leading) {
                    Text("Coffee location name")
                        .font(.headline)
                    Color.yellow
                        .frame(height: 200)
                }
                .padding()
            }
        }
        .navigationTitle("Coffee name")
    }
}

struct CoffeeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CoffeeDetailView()
        }
    }
}
