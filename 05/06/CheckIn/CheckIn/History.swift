import Foundation

class History: ObservableObject {
  @Published private(set) var snapshots: [Snapshot] = []
}

extension History {
  func add(_ rating: Int) {
    snapshots.append(Snapshot(rating: rating))
  }
}
