//
//  CoffeeCell.swift
//  Coffee
//
//  Created by Hans Rietmann on 23.03.23.
//

import SwiftUI

struct CoffeeCell: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 16) {
                Image(systemName: "cup.and.saucer")
                    .imageScale(.large)
                    .foregroundColor(Color.accentColor)
                VStack(alignment: .leading) {
                    Text("Coffee name")
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text("Location")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            
            Divider()
                .padding(.leading)
        }
    }
}

struct CoffeeCell_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavigationLink {
                Text("Destination")
            } label: {
                CoffeeCell()
            }
        }

    }
}
