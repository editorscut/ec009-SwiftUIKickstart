import SwiftUI

struct ContentView {
  let columns = [GridItem(.adaptive(minimum: 60,
                                    maximum: 100))]
}

extension ContentView: View {
  var body: some View {
    ScrollView {
      LazyVGrid(columns: columns) {
        ForEach(symbols) {symbol in
          Image(systemName: symbol.name)
            .resizable()
            .scaledToFit()
        }
      }
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
