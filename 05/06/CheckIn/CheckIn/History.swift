import Foundation

class History: ObservableObject {
  @Published private(set) var snapshots = [Snapshot]()
  
}

extension History {
  func add(_ rating: String) {
    if let rating = Int(rating) {
      snapshots
        .insert(Snapshot(rating: rating),
                at: 0)
    }
  }
}
