import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(spacing: 10) {
      Text("A SwiftUI Kickstart")
      HStack(spacing: 20) {
        Button("Back", action: {})
        Button("Forward", action: {})
      }
    }
  }
}

#Preview {
  ContentView()
}
