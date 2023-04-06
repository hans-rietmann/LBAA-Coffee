//
//  CoffeeTests.swift
//  CoffeeTests
//
//  Created by Hans Rietmann on 06.04.23.
//

import XCTest
@testable import Coffee

protocol CoffeeService {
    var coffees: [CoffeeModel] { get async throws }
}

class RemoteCoffeeLoader: CoffeeService {
    var coffees: [Coffee.CoffeeModel] {
        get async throws {
            return []
        }
    }
}

class MockRemoteCoffeeLoader: CoffeeService {
    
    var coffeesResult: Result<[CoffeeModel], Error> = .success([])
    
    var coffees: [CoffeeModel] {
        get async throws {
            try coffeesResult.get()
        }
    }
}

class ContentViewModel: ObservableObject {
    
    let coffeeService: CoffeeService
    
    init(coffeeService: CoffeeService) {
        self.coffeeService = coffeeService
    }
    
    func loadCoffees() async throws -> [CoffeeModel] {
        return try await coffeeService.coffees
    }
    
}


final class CoffeeTests: XCTestCase {
    
    
    var coffeeService: MockRemoteCoffeeLoader!
    var sut: ContentViewModel!
    
    
    override func setUp() {
        coffeeService = .init()
        sut = ContentViewModel(coffeeService: coffeeService)
    }
    
    
    func test_loadCoffees_success() async throws {
        let expectedResult = CoffeeModel.dummies
        coffeeService.coffeesResult = .success(expectedResult)
        let result = try await sut?.loadCoffees()
        XCTAssertEqual(expectedResult, result)
    }
    
    func test_loadCoffees_failure() async throws {
        
    }

}
