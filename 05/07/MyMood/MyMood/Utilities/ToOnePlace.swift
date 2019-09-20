//
//  ToOnePlace.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/15/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import Foundation

extension Double {
    var toOnePlace: String {
        formatter.string(for: self) ?? "Error formatting Double"
    }
}


fileprivate let formatter: NumberFormatter = {
    let f = NumberFormatter()
    f.maximumFractionDigits = 1
    f.minimumFractionDigits = 1
    f.minimumIntegerDigits = 1
    return f
}()
