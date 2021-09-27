import SwiftUI

struct ContentView: View {
  var body: some View {
    Text("A SwiftUI Kickstart")
      .background(Color.primary)
      .padding()
      .background(Color.blue)
      .font(.largeTitle)
      .padding()
      .background(Color.mint)
      .foregroundColor(.purple)
      .padding()
      .background(Color.secondary.opacity(0.4))
      .border(Color.red,
              width: 5)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}
