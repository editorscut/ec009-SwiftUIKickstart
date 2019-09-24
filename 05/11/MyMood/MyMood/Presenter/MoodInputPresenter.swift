//
//  MoodInputPresenter.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/23/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

let defaultContext = ""
let defaultRating = 2.0

class MoodInputPresenter: ObservableObject {
    @Published var context = defaultContext
    var rating = defaultRating
    
    private let history: History
    
    init(_ history: History) {
        self.history = history
    }
}

extension MoodInputPresenter {
    var contextIsTooLong: Bool {
        context.count > 30
    }
    
    var contextIsNotValid: Bool {
        context.isEmpty || contextIsTooLong
    }
}

extension MoodInputPresenter {
    func saveMood() {
        history.add(rating: rating,
                    context: context)
        reset()
    }
    
    private func reset() {
        context = defaultContext
        rating = defaultRating
    }
}
