import SwiftUI

struct StringDisplay {
  let value: String
}

extension StringDisplay: View {
  var body: some View {
    Text(value)
      .modifier(DisplayModifier())
  }
}

struct StringDisplay_Previews: PreviewProvider {
    static var previews: some View {
      StringDisplay(value: "Seven")
        .previewLayout(.sizeThatFits)
    }
}
