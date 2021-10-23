import SwiftUI

struct ContentView {
  @State private var currentValue = 0
}

extension ContentView: View {
  var body: some View {
    VStack (spacing: 30) {
      IntDisplay(value: currentValue)
      HStack (spacing: 20) {
        Button(action: back) {
          Image(systemName: "arrow.left")
        }
        Button(action: forward) {
          Image(systemName: "arrow.right")
        }
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
  }
}
