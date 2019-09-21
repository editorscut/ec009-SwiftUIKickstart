//
//  Emotion.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/18/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

enum Emotion: String, CaseIterable {
    case despondent
    case sad
    case neutral
    case happy
    case joyous
}

extension Emotion {
    static func create(with rating: Double) -> Emotion {
        guard (rating >= 0 && rating <= 4) else {return .neutral}
        return Emotion.allCases[Int(rating.rounded())]
    }
}
