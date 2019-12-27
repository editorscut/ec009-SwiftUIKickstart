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
    private let multipliers = [1.0, 10, 100, 1000]
    private var multiplier: Double = 1
    
    var wrappedValue: Double {
        get {
            value
        }
        set {
            value = (newValue * multiplier).rounded()/multiplier
        }
    }
    
    init(wrappedValue initialValue: Double,
         _ precision: Int) {
        guard multipliers.indices.contains(precision) else {fatalError("Rounding is only supported for precision 0 - \(multipliers.count + 1)")}
        multiplier = multipliers[precision]
        self.wrappedValue = initialValue
    }
}
