//
//  MoodInputButton.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/19/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct MoodInputButton: View {
    @Binding var value: Double
    @Binding var context: String
    let history: History
    
    var inputIsNotValid: Bool {
        context.isEmpty || (context.count > 30)
    }
    
    var body: some View {
        Button("Record Mood",
               action: recordMoodAndResetView)
            .disabled(inputIsNotValid)
    }
}

extension MoodInputButton {
    private func recordMoodAndResetView() {
        history.add(rating: value,
                    context: context)
        value = 2.0
        context = ""
    }
}

struct MoodEntryButton_Previews: PreviewProvider {
    static var previews: some View {
        MoodInputButton(value: .constant(2.5),
                        context: .constant("Just a stub"),
                        history: History())
    }
}
