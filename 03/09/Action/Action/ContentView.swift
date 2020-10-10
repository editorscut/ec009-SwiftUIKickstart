import SwiftUI

struct ContentView {
  @State private var value: Double = 5
}

extension ContentView: View {
  var body: some View {
    VStack {
      DoubleDisplay(value: value)
      Slider(value: $value,
             in: 0...10)
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}
