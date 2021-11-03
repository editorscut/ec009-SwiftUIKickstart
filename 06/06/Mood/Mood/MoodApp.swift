import SwiftUI

@main
struct MoodApp: App {
  var body: some Scene {
    let systemBackground = Color(UIColor.systemBackground)
    WindowGroup {
      ContentView()
        .background(.thinMaterial)
        .background(LinearGradient(colors: [systemBackground,
                                            .primary,
                                            systemBackground],
                                   startPoint: .top,
                                   endPoint: .bottom))
    }
  }
}
