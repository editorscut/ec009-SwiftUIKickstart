import SwiftUI

struct DoubleBorderButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding(4)
      .border(.mint)
      .padding(4)
      .border(.mint)
  }
}

#Preview {
  Button("Hello, world!"){ }
    .buttonStyle(DoubleBorderButtonStyle())
}
