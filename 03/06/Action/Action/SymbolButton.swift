import SwiftUI

struct SymbolButton {
  let symbolName: String
  let action: () -> Void
  
  init(_ symbolName: String,
       action: @escaping () -> Void = {}) {
    self.symbolName = symbolName
    self.action = action
  }
}

extension SymbolButton: View {
  var body: some View {
    Button(action: action){
      Image(systemName: symbolName)
    }
  }
}

struct SymbolButton_Previews: PreviewProvider {
  static var previews: some View {
    SymbolButton("questionmark")
  }
}
