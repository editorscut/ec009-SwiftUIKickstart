import SwiftUI

@main
struct ActionApp: App {
  @StateObject var support = ContentViewSupport()
  
  var body: some Scene {
    WindowGroup {
      ContentView(support: support)
    }
  }
}
