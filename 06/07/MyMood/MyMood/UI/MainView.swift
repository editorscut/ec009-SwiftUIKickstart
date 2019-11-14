//
//  ContentView.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/15/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var history = History()
    
    var body: some View {
        TabView {
            MoodInputView(presenter: MoodInputPresenter(history))
                .tabItem{
                    VStack {
                        Image(systemName: "person.circle")
                        Text("Mood")
                    }
                }
            HistoryView(history: history)
                .tabItem{
                    VStack {
                        Image(systemName: "tray.2")
                        Text("History")
                    }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
