import SwiftUI

@main
struct ActionApp: App {
  @State private var model = Model()
}

extension ActionApp {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(model)
    }
  }
}
