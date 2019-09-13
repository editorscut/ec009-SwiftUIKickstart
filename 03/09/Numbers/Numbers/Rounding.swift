//
//  Rounding.swift
//  Numbers
//
//  Created by Daniel Steinberg on 9/5/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

@propertyWrapper

struct ToTwoPlaces {
    private var value: Double = 0
    
    var wrappedValue: Double {
        get {
            value
        }
        set {
            value = (newValue * 100).rounded()/100
        }
    }
    
    init(wrappedValue initialValue: Double) {
        self.wrappedValue = initialValue
    }
}
