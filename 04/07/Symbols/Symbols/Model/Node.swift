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
  let childNodes: [Node]?
  
  init(name: String) {
    self.name = name
    
    if name.hasNoChildren {
      childNodes = nil
    } else {
      childNodes
        = subNodeNames(for: name)
        .map{nextNode in
          Node(name: "\(name).\(nextNode)")
        }
    }
  }
}


