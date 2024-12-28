import SwiftUI

struct ContentView: View {
  @State private var currentValue = 0
}

extension ContentView {
  var body: some View {
    VStack {
      Text(currentValue.description)
      HStack(spacing: 20) {
        Button {
          currentValue -= 1
        } label: {
          Image(systemName: "arrow.backward")
        }
        Button {
          currentValue += 1
        } label: {
          Image(systemName: "arrow.forward")
        }
      }
    }
  }
}


#Preview {
  ContentView()
}
