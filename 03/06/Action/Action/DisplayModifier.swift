import SwiftUI

struct DisplayModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundStyle(.secondary)
  }
}

#Preview {
  Text("Hello, world!")
    .modifier(DisplayModifier())
}
