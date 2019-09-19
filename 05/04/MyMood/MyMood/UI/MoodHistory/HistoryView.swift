//
//  HistoryView.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/15/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
    @ObservedObject var history: History
    
    var mood: Mood? {
        history.moods.first
    }
    
    var ratingText: Text {
        mood.map{Text($0.rating.toOnePlace)}
            ?? Text("No mood to display")
    }
    
    var body: some View {
        VStack {
            ratingText
                .font(.largeTitle)
                .foregroundColor(.secondary)
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: History())
    }
}
