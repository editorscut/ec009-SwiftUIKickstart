//
//  Symbol.swift
//  Symbols
//
//  Created by Daniel Steinberg on 9/28/20.
//

import Foundation

let symbols = symbolNames.map(Symbol.init)

struct Symbol: Identifiable {
  let name: String
  let id = UUID()
}
