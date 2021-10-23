import SwiftUI

struct IntDisplay {
  let value: Int
}

extension IntDisplay: View {
  var body: some View {
    Text(value.description)
      .modifier(DisplayModifier())
  }
}

struct IntDisplay_Previews: PreviewProvider {
  static var previews: some View {
    IntDisplay(value: 7)
  }
}
