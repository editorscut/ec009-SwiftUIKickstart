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
    
    var presenter: MoodPresenter {
        MoodPresenter(mood: history.moods.first)
    }
    
    var body: some View {
        HStack {
            Text(presenter.context).padding(.leading)
            Spacer()
            Text(presenter.rating).padding(.trailing)
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: History())
    }
}
