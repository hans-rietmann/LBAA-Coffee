//
//  CoffeeTests.swift
//  CoffeeTests
//
//  Created by Hans Rietmann on 06.04.23.
//

import XCTest
@testable import Coffee



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
    
    
    class MockRemoteCoffeeLoader: CoffeeService {
        
        var coffeesResult: Result<[CoffeeModel], Error> = .success([])
        
        var coffees: [CoffeeModel] {
            get async throws {
                try coffeesResult.get()
            }
        }
    }

}
