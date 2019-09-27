//
//  MoodDetailView.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/20/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct MoodDetailView: View {
    let presenter: MoodPresenter
    
    var body: some View {
        VStack {
            Text(presenter.context)
                .font(.largeTitle)
                .foregroundColor(.secondary)
                .padding(.top)
            FaceView(value: presenter.rawRating)
            Text(presenter.emotion)
                .font(.headline)
                .padding(.bottom)
            Text(presenter.date)
        }.navigationBarTitle("Rating: \(presenter.rating)")
    }
}

struct MoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MoodDetailView(presenter: MoodPresenter(mood: Mood(rating: 2.5,
                                                           context: "Just a stub")))
    }
}
