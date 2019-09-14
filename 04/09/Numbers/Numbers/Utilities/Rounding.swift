//
//  Rounding.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/5/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

@propertyWrapper

struct RoundedTo {
    private var value: Double = 0
    private var multiplier: Double = 1
    
    var wrappedValue: Double {
        get {
            value
        }
        set {
            value = (newValue * multiplier).rounded()/multiplier
        }
    }
    
    init(wrappedValue initialValue: Double, _ precision: Int) {
        guard precision >= 0 && precision <= 3 else {fatalError("Rounding is only supported for precision 0, 1, 2, or 3")}
        multiplier = [1, 10, 100, 1000][precision]
        self.wrappedValue = initialValue
    }
}
