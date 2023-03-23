//
//  CoffeeModel.swift
//  Coffee
//
//  Created by Hans Rietmann on 23.03.23.
//

import Foundation
import CoreLocation


struct CoffeeModel {
    
    let id = UUID()
    let name: String
    let desrption: String
    let locationName: String
    let coordinates: CLLocationCoordinate2D
    
}
