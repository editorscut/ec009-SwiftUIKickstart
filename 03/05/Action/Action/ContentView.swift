import SwiftUI

struct ContentView {
  @State private var currentValue = 0
}

extension ContentView: View {
  var body: some View {
    VStack {
      IntDisplay(value: currentValue)
      HStack {
        SymbolButton("arrow.left",
                     action: back)
        .padding()
        SymbolButton("arrow.right",
                     action: forward)
        .padding()
      }
    }
  }
}

extension ContentView {
  private func back() {
    currentValue -= 1
  }
  private func forward() {
    currentValue += 1
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}
