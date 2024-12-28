import SwiftUI

struct IntDisplay: View {
  let model: Model
}

extension IntDisplay {
  var body: some View {
    Text(model.value.description)
      .modifier(DisplayModifier())
  }
}

#Preview {
  IntDisplay(model: Model())
}
