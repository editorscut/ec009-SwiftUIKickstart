import SwiftUI

struct Eyes {
  
}

extension Eyes: View {
  var body: some View {
    HStack {
      Circle()
      Spacer()
      Circle()
    }
    .foregroundColor(.black)
    .frame(width: 300,
           height: 20,
           alignment: .center)
    .offset(x: 0, y: -40)
  }
}

struct Eyes_Previews: PreviewProvider {
  static var previews: some View {
    Eyes()
  }
}
