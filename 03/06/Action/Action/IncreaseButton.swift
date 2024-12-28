import SwiftUI

struct IncreaseButton: View {
  @Binding var value: Int
}

extension IncreaseButton {
  var body: some View {
    Button {
      value += 1
    } label: {
      Image(systemName: "arrow.forward")
    }
    .buttonStyle(DoubleBorderButtonStyle())
  }
}

#Preview {
  @Previewable @State var localStateValue = 0
  IncreaseButton(value: $localStateValue )
}

