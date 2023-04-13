//
//  ContentViewModel.swift
//  Coffee
//
//  Created by Hans Rietmann on 13.04.23.
//

import Combine




class ContentViewModel: ObservableObject {
    
    let coffeeService: CoffeeService
    
    init(coffeeService: CoffeeService) {
        self.coffeeService = coffeeService
    }
    
    func loadCoffees() async throws -> [CoffeeModel] {
        return try await coffeeService.coffees
    }
    
}
