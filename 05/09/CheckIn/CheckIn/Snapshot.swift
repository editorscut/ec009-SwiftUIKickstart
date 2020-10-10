//
//  Snapshot.swift
//  CheckIn
//
//  Created by Daniel Steinberg on 10/5/20.
//

import Foundation

struct Snapshot: Identifiable {
  let rating: Int
  let date = Date()
  let id = UUID()
}
