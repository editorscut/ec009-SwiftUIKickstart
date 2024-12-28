import SwiftUI

struct DecreaseButton: View {
  @Binding var value: Int
}

extension DecreaseButton {
  var body: some View {
    Button {
      value -= 1
    } label: {
      Image(systemName: "arrow.backward")
    }
    .buttonStyle(DoubleBorderButtonStyle())
  }
}

#Preview {
  @Previewable @State var localStateValue = 0
  DecreaseButton(value: $localStateValue )
}

