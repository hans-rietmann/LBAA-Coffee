//
//  RemoteCoffeeLoader.swift
//  Coffee
//
//  Created by Hans Rietmann on 13.04.23.
//

import Foundation




class RemoteCoffeeLoader: CoffeeService {
    
    var coffees: [Coffee.CoffeeModel] {
        get async throws {
            guard let url = URL(string: "") else { throw URLError(.badURL) }
            let session = URLSession.shared
            let (data, response) = try await session.data(from: url)
            guard let response = response as? HTTPURLResponse,
                  response.statusCode == 200
            else { throw URLError(.badServerResponse) }
            
            let coffees = try JSONDecoder().decode([Coffee.CoffeeModel].self, from: data)
            return coffees
        }
    }
}
