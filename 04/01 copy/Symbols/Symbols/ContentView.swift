import SwiftUI

struct ContentView: View {
  var body: some View {
    SystemLabel(symbolNames[104])
      .labelStyle(SurroundLabelStyle())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
