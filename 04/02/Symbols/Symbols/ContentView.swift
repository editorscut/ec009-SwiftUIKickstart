import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      ForEach(symbols) {symbol in
        SystemLabel(symbol.name)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
