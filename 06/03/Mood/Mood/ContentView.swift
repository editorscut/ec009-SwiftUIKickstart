//
//  ContentView.swift
//  Mood
//
//  Created by Daniel Steinberg on 10/8/20.
//

import SwiftUI

struct ContentView {
  @State private var rating = 50.0
  @AppStorage("moodRating") private var moodRating = 50.0
  @Environment(\.scenePhase) private var scenePhase
}

extension ContentView: View {
  var body: some View {
    VStack(spacing: 20) {
      Text("Rating: \(Int(rating))")
      SwiftyMoji(value: rating)
      Slider(value: $rating,
             in: 0...100)
    }
    .onAppear {
      rating = moodRating
    }
    .onChange(of: scenePhase){ phase in
      if phase == .background {
        moodRating = rating
      }
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
