import SwiftUI

struct IntDisplay {
  let value: Int
}

extension IntDisplay: View {
  var body: some View {
    StringDisplay(value: value.description)
  }
}

struct IntDisplay_Previews: PreviewProvider {
    static var previews: some View {
      IntDisplay(value: 7)
        .previewLayout(.sizeThatFits)
    }
}
