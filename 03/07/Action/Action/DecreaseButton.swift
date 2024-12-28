import SwiftUI

struct DecreaseButton: View {
  @EnvironmentObject private var model: Model
}

extension DecreaseButton {
  var body: some View {
    Button {
      model.decrease()
    } label: {
      Image(systemName: "arrow.backward")
    }
    .buttonStyle(DoubleBorderButtonStyle())
  }
}

#Preview {
  DecreaseButton()
    .environmentObject(Model())
}

