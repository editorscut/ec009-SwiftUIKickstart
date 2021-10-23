import SwiftUI

struct DisplayModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(.secondary)
  }
}
