import SwiftUI

struct DestinationView {
  let snapshot: Snapshot
}

extension DestinationView: View {
  var body: some View {
    VStack(spacing: 40) {
      Text(snapshot.rating.description)
        .font(.headline)
      Text(snapshot.date, style: .time)
      Image(systemName: symbol(snapshot.rating))
        .resizable().aspectRatio(1, contentMode: .fit)
        .padding(.horizontal)
    }
  }
}

struct DestinationView_Previews: PreviewProvider {
  static var previews: some View {
    DestinationView(snapshot: Snapshot(rating: 73))
  }
}
