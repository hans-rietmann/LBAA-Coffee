//
//  CoffeeModel.swift
//  Coffee
//
//  Created by Hans Rietmann on 23.03.23.
//

import Foundation
import CoreLocation


struct CoffeeModel: Identifiable, Equatable {
    
    
    let id = UUID()
    let name: String
    let description: String
    let locationName: String
    let coordinates: CLLocationCoordinate2D
    
    static func == (lhs: CoffeeModel, rhs: CoffeeModel) -> Bool {
        lhs.id == rhs.id
    }
}


extension CoffeeModel {
    
    static var dummy: CoffeeModel {
        CoffeeModel(
            name: "My coffee",
            description: "My coffee description",
            locationName: "Zürich",
            coordinates: .init(
                latitude: 12,
                longitude: 13)
        )
    }
    
    static var dummies: [CoffeeModel] {
        [
            CoffeeModel(
                name: "Espresso",
                description: "Delicious one from Zürich",
                locationName: "Zürich",
                coordinates: .init()),
            CoffeeModel(
                name: "Flat White",
                description: "Cappuccino with double the amount of Espresso.",
                locationName: "Lugano",
                coordinates: .init()),
            CoffeeModel(
                name: "Ristretto",
                description: "Concentrated Espresso with less water and more coffee 😋",
                locationName: "Milano",
                coordinates: .init()),
            CoffeeModel(
                name: "Matcha latte",
                description: "Matcha pouder (made from ground green tee plants).",
                locationName: "Japan",
                coordinates: .init()),
            CoffeeModel(
                name: "Kopi Luwak",
                description: "The most expensive coffee 🤑",
                locationName: "Indonisia",
                coordinates: .init())
        ]
    }
    
}
