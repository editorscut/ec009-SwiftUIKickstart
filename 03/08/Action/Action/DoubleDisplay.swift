import SwiftUI

struct DoubleDisplay {
  @Rounding(3) var value: Double = 0.0
}

extension DoubleDisplay: View {
  var body: some View {
    Text(value.description)
  }
}

struct DoubleDisplay_Previews: PreviewProvider {
  static var previews: some View {
    DoubleDisplay(value: 7.5)
  }
}
