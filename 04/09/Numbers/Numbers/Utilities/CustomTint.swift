//
//  CustomTint.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/13/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

private let defaultColor = Color.blue

class CustomTint: ObservableObject {
    static let colors: [Color] = [defaultColor, .green,
                                      .orange, .purple, .red]
    
    @Published private(set) var color: Color = defaultColor

    var selectedColor: Int {
        get {
            CustomTint.colors.firstIndex(of: color) ?? 0
        }
        set {
            if (0 ..< CustomTint.colors.count).contains(newValue) {
                color = CustomTint.colors[newValue]
            } else {
                color = defaultColor
            }
        }
    }
}
