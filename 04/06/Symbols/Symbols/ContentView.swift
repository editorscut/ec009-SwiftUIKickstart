import SwiftUI

struct ContentView: View {
  var body: some View {
    List {
      ForEach(roots){root in
        DisclosureGroup {
          DisclosedGrid(disclosedSymbols: symbolNames(startingWith: root.name))
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

