import SwiftUI

struct TextEntryModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .textFieldStyle(.roundedBorder)
      .multilineTextAlignment(.center)
      .padding(.horizontal, 40)
  }
}
