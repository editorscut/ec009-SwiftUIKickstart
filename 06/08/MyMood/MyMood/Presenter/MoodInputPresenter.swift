//
//  MoodInputPresenter.swift
//  MyMood
//
//  Created by Daniel Steinberg on 11/6/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

let defaultContext = ""
let defaultValue = 2.0

class MoodInputPresenter: ObservableObject {
    @Published var context = defaultContext
    @Published var value = defaultValue
    
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
        history.add(rating: value,
                    context: context)
        reset()
    }
    
    private func reset() {
        context = defaultContext
        value = defaultValue
    }
}

extension MoodInputPresenter {
    var warningViewIfNecessary: LengthWarningView? {
        contextIsTooLong ? LengthWarningView() : nil
    }
}
