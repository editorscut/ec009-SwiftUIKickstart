import SwiftUI

struct ContentView: View {
  var body: some View {
    CheckerBoard {
      Text("FDD")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}

