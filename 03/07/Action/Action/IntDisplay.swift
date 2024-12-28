import SwiftUI

struct IntDisplay: View {
  @EnvironmentObject private var model: Model
}

extension IntDisplay {
  var body: some View {
    Text(model.value.description)
      .modifier(DisplayModifier())
  }
}

#Preview {
  IntDisplay()
    .environmentObject(Model())
}
