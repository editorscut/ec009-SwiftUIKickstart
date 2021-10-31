import Foundation
import UIKit
import SwiftUI

class History: ObservableObject {
  @Published private(set) var snapshots: [Snapshot] = []
}

extension History {
  func add(_ rating: Int) {
    snapshots.append(Snapshot(rating: rating))
  }
  
  func remove(_ indexSet: IndexSet) {
    _ = indexSet.map{index in
      snapshots.remove(at: index)
    }
  }
}
