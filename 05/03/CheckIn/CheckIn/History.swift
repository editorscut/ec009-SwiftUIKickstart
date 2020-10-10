//
//  History.swift
//  CheckIn
//
//  Created by Daniel Steinberg on 10/5/20.
//

class History {
  private(set) var snapshots = [Snapshot]() {
    didSet {
      print(snapshots)
    }
  }
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
