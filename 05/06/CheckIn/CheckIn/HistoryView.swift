import SwiftUI

struct HistoryView {
  @ObservedObject var history: History
}

extension HistoryView: View {
  var body: some View {
    List {
      ForEach(history.snapshots){snapshot in
        HStack(spacing: 20) {
          Text("Rating: \(snapshot.rating)")
          Text(snapshot.date,
               style: .date)
            .foregroundColor(.secondary)
          Text(snapshot.date,
               style: .time)
            .foregroundColor(.secondary)
        }
      }
    }
  }
}

struct HistoryView_Previews: PreviewProvider {
  static var previews: some View {
    HistoryView(history: History())
  }
}
