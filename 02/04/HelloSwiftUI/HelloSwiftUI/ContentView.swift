import SwiftUI

struct ContentView: View {
  
  var body: some View {
    Image("Cover")
      .resizable()
      .scaledToFit()
    Text("Cover")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

