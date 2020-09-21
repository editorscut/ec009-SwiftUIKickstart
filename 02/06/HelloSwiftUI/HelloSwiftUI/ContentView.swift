import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(spacing: 5) {
      Text("A SwiftUI Kickstart")
      HStack(spacing: 10) {
        Button("Back", action: {})
        Button("Forward", action: {})
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}


