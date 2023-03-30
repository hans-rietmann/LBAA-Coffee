//
//  CoffeeApp.swift
//  Coffee
//
//  Created by Hans Rietmann on 23.03.23.
//

import SwiftUI

@main
struct CoffeeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(coffees: CoffeeModel.dummies)
        }
    }
}
