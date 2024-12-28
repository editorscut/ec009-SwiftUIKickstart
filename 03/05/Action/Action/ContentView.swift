import SwiftUI

struct ContentView: View {
  @State private var currentValue = 0
}

extension ContentView {
  var body: some View {
    VStack(spacing: 30) {
      IntDisplay(value: currentValue)
      HStack(spacing: 20) {
        SymbolButton("arrow.backward") { currentValue -= 1 }
        SymbolButton("arrow.forward") { currentValue += 1 }
      }
    }
  }
}


#Preview {
  ContentView()
}
