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
  
  func remove(_ indexSet: IndexSet) {
    _ = indexSet.map{index in
      snapshots.remove(at: index)
    }
  }
  
  func clear() {
    snapshots.removeAll()
  }
}
