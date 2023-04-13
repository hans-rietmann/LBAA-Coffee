//
//  CoffeeCell.swift
//  Coffee
//
//  Created by Hans Rietmann on 23.03.23.
//

import SwiftUI

/// Next session:
/// - Insert the ``CoffeeModel`` inside the ``CoffeeCell``
/// - Insert the ``CoffeeModel`` inside the ``CoffeeDetailView``
/// - Create a ViewModel to generate the favorite coffees 

struct CoffeeCell: View {
    
    let coffee: CoffeeModel
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 16) {
                Image(systemName: "cup.and.saucer")
                    .imageScale(.large)
                    .foregroundColor(Color.accentColor)
                VStack(alignment: .leading) {
                    Text(coffee.name)
                        .rowTitleStyle()
                    Text(coffee.locationName)
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
                CoffeeCell(coffee: .dummy)
            }
        }

    }
}
