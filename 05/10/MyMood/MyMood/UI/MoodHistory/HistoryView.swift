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
            List {
                ForEach(presenters) {presenter in
                    NavigationLink(destination: MoodDetailView(presenter: presenter)){
                        MoodCell(presenter: presenter)
                    }
                }.onDelete { index in
                    self.history.remove(at: index)
                }
            }.navigationBarTitle("Mood History")
                .navigationBarItems(leading: Button(action: clear){
                    Text("Clear")
                }, trailing: EditButton())
            
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
