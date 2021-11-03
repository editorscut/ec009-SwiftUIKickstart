import SwiftUI

struct SwiftyMoji {
  let value: Double
}

extension SwiftyMoji: View {
  var body: some View {
    GeometryReader {proxy in
      let size = proxy.frame(in: .local)
      let minDimension = min(size.width, size.height)
      
      ZStack {
        Circle()
          .foregroundColor(color)
        Eyes(size: minDimension)
        Mouth(size: minDimension,
              value: value)
      }
    }
  }
}

extension SwiftyMoji {
  var color: Color {
    Color(red: (100 - value)/50,
          green: value/50,
          blue: 0)
  }
}

struct SwiftyMoji_Previews: PreviewProvider {
  static var previews: some View {
    SwiftyMoji(value: 60)
  }
}
