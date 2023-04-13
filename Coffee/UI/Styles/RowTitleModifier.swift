//
//  RowTitleModifier.swift
//  Coffee
//
//  Created by Hans Rietmann on 13.04.23.
//

import SwiftUI


struct RowTitleModifier: ViewModifier {
    
    let foregroundColor: Color
    
    init(foregroundColor: Color = .primary) {
        self.foregroundColor = foregroundColor
    }
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(foregroundColor)
    }
}

extension View {
    func rowTitleStyle(foregroundColor: Color = .primary) -> some View {
        modifier(RowTitleModifier(foregroundColor: foregroundColor))
    }
}
