import SwiftUI

struct SymbolButton: View {
  let symbolName: String
  let action: () -> Void
  
  init(_ symbolName: String,
       action: @escaping () -> Void) {
    self.symbolName = symbolName
    self.action = action
  }
}

extension SymbolButton {
  var body: some View {
    Button(action: action) {
      Image(systemName: symbolName)
    }
    .buttonStyle(DoubleBorderButtonStyle())
  }
}

#Preview {
  SymbolButton("questionmark",
               action: {})
}
