import SwiftUI

struct IncreaseButton: View {
  @EnvironmentObject private var model: Model
}

extension IncreaseButton {
  var body: some View {
    Button {
      model.increase()
    } label: {
      Image(systemName: "arrow.forward")
    }
    .buttonStyle(DoubleBorderButtonStyle())
  }
}

#Preview {
  IncreaseButton()
    .environmentObject(Model())
}

