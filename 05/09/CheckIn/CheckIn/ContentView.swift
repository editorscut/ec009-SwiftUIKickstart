import SwiftUI

struct ContentView {
  let history = History()
}

extension ContentView: View {
  var body: some View {
    TabView {
      CurrentView(history: history)
        .tabItem {
          Label("Record Mood",
                systemImage: "tray.and.arrow.down")
        }
      HistoryView(history: history)
        .tabItem {
          Label("History",
          systemImage: "tray.full")
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
