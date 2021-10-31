import SwiftUI

@main
struct CheckInApp: App {
  @StateObject private var accent = Accent()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .accentColor(accent.color)
        .environmentObject(accent)
    }
  }
}
