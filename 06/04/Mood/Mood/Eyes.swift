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
  }
}

struct Eyes_Previews: PreviewProvider {
  static var previews: some View {
    Eyes()
  }
}
