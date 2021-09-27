import SwiftUI

struct ContentView: View {
  let hasImage = true
  
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
