import SwiftUI

@main
struct ActionApp: App {
  private let support = ContentViewSupport()
  
  var body: some Scene {
    WindowGroup {
      ContentView(support: support)
    }
  }
}
