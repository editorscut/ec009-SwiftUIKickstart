import SwiftUI

struct ContentView: View {
  var body: some View {
    CheckerBoard(backgroundColor: .green) {
      Image("Cover")
        .resizable()
        .scaledToFit()
      Text("FDD")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.device)
  }
}

