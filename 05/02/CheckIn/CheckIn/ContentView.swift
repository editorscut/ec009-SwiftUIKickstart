import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      CurrentView()
        .tabItem {
          Label("Record Mood",
                systemImage: "tray.and.arrow.down")
        }
      HistoryView()
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
