import SwiftUI

struct ContentView {
  @State private var favorites = Set<Symbol>()
  @State private var deleted = Set<Symbol>()
  @State private var searchString = ""
}

extension ContentView: View {
  var body: some View {
    NavigationView {
      List(filteredSymbols) {symbol in
        SystemLabel(symbol.name)
          .listItemTint(favorites.contains(symbol)
                        ? .orange
                        : .accentColor)
          .swipeActions {
            Button("Favorites",
                   action: {favorites.insert(symbol)})
              .tint(.orange)
            Button("Delete",
                   role: .destructive,
                   action: {deleted.insert(symbol)})
          }
      }
      .searchable(text: $searchString)
      .navigationTitle("Symbols")
    }
  }
}

extension ContentView {
  private var filteredSymbols: [Symbol] {
    let remainingSymbols = symbols.filter {symbol in
      !deleted.contains(symbol)
    }
    if searchString.isEmpty {
      return remainingSymbols
    } else {
      return remainingSymbols.filter { symbol in
        symbol.name.contains(searchString.lowercased())
      }
    }
  }
}

//struct ContentView_Previews: PreviewProvider {
//  static var previews: some View {
//    ContentView()
//  }
//}
