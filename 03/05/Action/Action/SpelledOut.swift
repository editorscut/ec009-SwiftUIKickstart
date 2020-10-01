//
//  SpelledOut.swift
//  Action
//
//  Created by Daniel Steinberg on 9/24/20.
//

import Foundation

private let formatter: NumberFormatter = {
  let f = NumberFormatter()
  f.numberStyle = .spellOut
  return f
}()

extension Int {
  var spelledOut: String {
    formatter.string(for: self) ?? ""
  }
}
