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
        NavigationView {
            List(presenters) {presenter in
                NavigationLink(destination: MoodDetailView(presenter: presenter)){
                    MoodCell(presenter: presenter)
                }
            }.navigationBarTitle("Mood History")
             .navigationBarItems(trailing: Button("Clear",
                                                  action: clear))
        }
    }
}

extension HistoryView {
    private func clear() {
        history.clear()
    }
}



struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: History())
    }
}
