import SwiftUI

struct ContentView: View {
  var body: some View {
    CheckerBoard {
      Image("Cover")
        .resizable()
        .scaledToFit()
      Text("Kickstart")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}
