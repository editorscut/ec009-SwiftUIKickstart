import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack (spacing: 30) {
      Text("Hello")
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
    print("Back")
  }
  private func forward() {
    print("Forward")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
