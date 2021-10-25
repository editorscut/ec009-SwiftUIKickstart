import SwiftUI

struct ContentView: View {
  var body: some View {
    List {
      ForEach(roots) {root in
        DisclosureGroup {
          ScrollView(.horizontal) {
            LazyHGrid(rows: [GridItem(.flexible())]) {
              ForEach(symbols(withRoot: root)) {symbol in
                Image(systemName: symbol.name)
              }
            }
          }
        } label: {
          Text(root.name)
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
