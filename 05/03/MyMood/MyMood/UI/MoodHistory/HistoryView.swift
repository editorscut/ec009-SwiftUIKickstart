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

    var body: some View {
        Text(history.moods.first?.rating.toOnePlace
             ?? "No mood to display")
            .font(.largeTitle)
            .foregroundColor(.secondary)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: History())
    }
}
