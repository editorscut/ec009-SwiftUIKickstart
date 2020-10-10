import SwiftUI

struct ContentView {
  @ObservedObject var support: ContentViewSupport
}

extension ContentView: View {
  var body: some View {
    VStack {
      IntDisplay(value: support.currentValue)
      HStack(spacing: 42) {
        SymbolButton("arrow.left",
                     action: support.back)
        SymbolButton("arrow.right",
                     action: support.forward)
      }
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(support: ContentViewSupport())
      .previewLayout(.sizeThatFits)
  }
}
