import SwiftUI

struct ContentView: View {
  var body: some View {
    CheckerBoard {
      Image("Cover")
        .resizable()
        .scaledToFit()
      Text("Kickstart")
        .padding()
    }
  }
}

#Preview {
  ContentView()
}
