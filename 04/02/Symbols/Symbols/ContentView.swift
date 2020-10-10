import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(spacing: 20) {
      ForEach(symbols){symbol in
        SystemLabel(name: symbol.name)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

