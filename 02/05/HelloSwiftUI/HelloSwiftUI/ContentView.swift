import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("A SwiftUI Kickstart")
      HStack {
        Button("Back", action: {})
        Button("Forward", action: {})
      }
    }
  }
}

#Preview {
  ContentView()
}
