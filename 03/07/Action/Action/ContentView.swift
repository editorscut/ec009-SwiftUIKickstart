import SwiftUI

struct ContentView: View {
}

extension ContentView {
  var body: some View {
    VStack(spacing: 30) {
      IntDisplay()
      HStack(spacing: 20) {
        DecreaseButton()
        IncreaseButton()
      }
    }
  }
}


#Preview {
  ContentView()
    .environmentObject(Model())
}
