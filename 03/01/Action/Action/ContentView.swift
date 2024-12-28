import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
     Text("Hello")
      HStack(spacing: 20) {
        Button {
          back()
        } label: {
          Image(systemName: "arrow.backward")
        }
        Button {
          forward()
        } label: {
          Image(systemName: "arrow.forward")
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

#Preview {
  ContentView()
}
