import SwiftUI

@main
struct CheckInApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(Accent())
    }
  }
}
