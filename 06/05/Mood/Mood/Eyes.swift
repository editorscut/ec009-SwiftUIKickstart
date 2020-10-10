import SwiftUI

struct Eyes {
  let size: CGFloat
}

extension Eyes: View {
  var body: some View {
    HStack {
      Circle()
      Spacer()
      Circle()
    }
    .foregroundColor(.black)
    .frame(width: size * 3 / 4,
           height: size / 12,
           alignment: .center)
    .offset(x: 0,
            y: -size / 8)
  }
}

struct Eyes_Previews: PreviewProvider {
  static var previews: some View {
    Eyes(size: 100)
  }
}
