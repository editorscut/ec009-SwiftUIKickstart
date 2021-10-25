import SwiftUI

struct ContentView: View {
  var body: some View {
    List (roots,
          children: \.childNodes) {root in
      Text(root.name)
    }
  }
}



struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
