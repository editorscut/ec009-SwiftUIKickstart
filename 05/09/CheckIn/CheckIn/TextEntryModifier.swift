import SwiftUI

struct TextEntryModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .textFieldStyle(RoundedBorderTextFieldStyle())
      .multilineTextAlignment(.center)
      .padding(.horizontal)
  }
}
