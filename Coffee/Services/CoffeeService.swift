//
//  CoffeeService.swift
//  Coffee
//
//  Created by Hans Rietmann on 13.04.23.
//

import Foundation



protocol CoffeeService {
    var coffees: [CoffeeModel] { get async throws }
}
