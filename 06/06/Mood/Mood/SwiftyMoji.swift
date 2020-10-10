import SwiftUI

struct SwiftyMoji {
  let value: Double
}

extension SwiftyMoji: View {
  var body: some View {
    GeometryReader {proxy in
      let diameter = minDimension(for: proxy)
      ZStack {
        Circle()
          .foregroundColor(color)
        Eyes(size: diameter)
        Mouth(size: diameter,
              value: value)
      }
    }
  }
}

extension SwiftyMoji {
  private func minDimension(for proxy: GeometryProxy) -> CGFloat {
    let size = proxy.frame(in: .local).size
    return min(size.width, size.height)
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
