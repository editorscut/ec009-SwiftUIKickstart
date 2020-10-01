//
//  Node.swift
//  Symbols
//
//  Created by Daniel Steinberg on 9/30/20.
//

import Foundation

let roots
  = root(of: symbolNames)
  .map(Node.init)

struct Node: Identifiable {
  let id = UUID()
  let name: String
}

