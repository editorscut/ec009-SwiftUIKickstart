//
//  Mood.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/17/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//
import SwiftUI

struct Mood: Codable, Identifiable {
    let rating: Double
    let context: String
    let timeStamp = Date()
    let id = UUID()
    
    var emotion: Emotion {
        Emotion.create(with: rating)
    }
}