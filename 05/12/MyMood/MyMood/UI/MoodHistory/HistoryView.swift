//
//  HistoryView.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/15/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
    @ObservedObject var presenter: HistoryPresenter
        
    var body: some View {
        NavigationView {
            List {
                ForEach(presenter.moodPresenters) {moodPresenter in
                    NavigationLink(destination: MoodDetailView(presenter: moodPresenter)){
                        MoodCell(presenter: moodPresenter)
                    }
                }.onDelete {index in
                    self.presenter.remove(at: index)
                }
            }.navigationBarTitle("Mood History")
                .navigationBarItems(leading: Button("Clear",
                                                    action: clear),
                                    trailing: EditButton())
        }
    }
}

extension HistoryView {
    private func clear() {
        presenter.clear()
    }
}


struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(presenter: HistoryPresenter(History()))
    }
}
