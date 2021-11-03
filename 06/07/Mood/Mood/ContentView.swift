import SwiftUI

struct ContentView {
  @State private var rating = 50.0
  @AppStorage("moodRating") private var moodRating = 50.0
  @Environment(\.scenePhase) private var scenePhase
}

extension ContentView: View {
  var body: some View {
    VStack(spacing: 40) {
      Text(Int(rating).description)
      SwiftyMoji(value: rating)
      Slider(value: $rating,
             in: 0...100)
        .multilineTextAlignment(.center)
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
