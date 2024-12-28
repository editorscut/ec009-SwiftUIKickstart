import SwiftUI

struct IntDisplay: View {
  let value: Int
}

extension IntDisplay {
  var body: some View {
    Text(value.description)
      .font(.largeTitle)
      .foregroundStyle(.secondary)
  }
}

#Preview {
  IntDisplay(value: 7)
}
