//
//  MoodInputButton.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/19/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct MoodInputButton: View {
    let value: Double
    let history: History
    
    var body: some View {
        Button(action: {self.history.add(rating: self.value)}){
            Text("Record Mood")
        }
    }
}

struct MoodEntryButton_Previews: PreviewProvider {
    static var previews: some View {
        MoodInputButton(value: 2.5,
                        history: History())
    }
}
