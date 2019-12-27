//
//  History.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/17/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

class History {
    private(set) var moods = [Mood]() {
        didSet {
            updateMoodRecords()
            onUpdate()
        }
    }
    
    var onUpdate: () -> Void = {}
    
    init() {
        moods = initializeMoods()
    }
}

extension History {
    func add(rating: Double,
             context: String) {
        moods.insert(Mood(rating: rating,
                          context: context),
                     at: 0)
    }
    
    func remove(at index: Int) {
        moods.remove(at: index)
    }
    
    func clear() {
        moods.removeAll()
    }
}
