import SwiftUI

struct ContentView: View {
  var body: some View {
    List(symbols){symbol in
      SystemLabel(name: symbol.name)
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

