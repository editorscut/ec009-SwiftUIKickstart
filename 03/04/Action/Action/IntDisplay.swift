import SwiftUI

struct IntDisplay: View {
  let value: Int
}

extension IntDisplay {
  var body: some View {
    Text(value.description)
      .modifier(DisplayModifier())
  }
}

#Preview {
  IntDisplay(value: 7)
}
