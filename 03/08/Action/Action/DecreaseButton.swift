import SwiftUI

struct DecreaseButton: View {
  let model: Model
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
  DecreaseButton(model: Model())
}

