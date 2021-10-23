import SwiftUI

struct DesignHelper {
  @Binding var currentValue: Double
  let range: ClosedRange<Double>
}

extension DesignHelper: View {
  var body: some View {
    VStack(spacing: 20) {
      Text(currentValue.description)
      Slider(value: $currentValue,
             in: range)
    }
    .padding(20)
    .border(.secondary, width: 0.2)
    .padding()
  }
}

struct DesignHelper_Previews: PreviewProvider {
  static var previews: some View {
    DesignHelper(currentValue: .constant(40),
                 range: 20...60)
  }
}
