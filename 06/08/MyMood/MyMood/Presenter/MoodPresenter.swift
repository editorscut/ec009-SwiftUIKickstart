//
//  MoodPresenter.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/18/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//
import Foundation

struct MoodPresenter {
    let mood: Mood
}

fileprivate let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .short
    return formatter
}()

extension MoodPresenter {
    var rating: String {
        mood.rating.toOnePlace
    }
    
    var context: String {
        mood.context
    }
    
    var emotion: String {
        mood.emotion.rawValue
    }
    
    var date: String {
        dateFormatter.string(from: mood.timeStamp)
    }
    
    var value: Double {
        mood.rating
    }
    
    var accessibilityValue: String {
        let adjustedValue = (value * 25).rounded()
        return "Happiness is \(adjustedValue) percent"
    }
}

extension MoodPresenter: Identifiable {
    var id: UUID {
        mood.id
    }
}

extension MoodPresenter {
    init(mood: Mood?) {
        if let mood = mood {
            self.mood = mood
        } else {
            self.mood = Mood(rating: -1.0,
                             context: "No mood to display")
        }
    }
}
