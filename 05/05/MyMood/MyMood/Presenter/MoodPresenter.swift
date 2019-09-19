//
//  MoodPresenter.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/18/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

struct MoodPresenter {
    let mood: Mood
}

extension MoodPresenter {
    var rating: String {
        mood.rating.toOnePlace
    }
    
    var context: String {
        mood.context
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
