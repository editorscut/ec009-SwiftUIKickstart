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
    
    var presenters: [MoodPresenter] {
        history.moods
               .map(MoodPresenter.init(mood:))
    }

    var body: some View {
        List(presenters) {presenter in
            MoodCell(presenter: presenter)
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: History())
    }
}
