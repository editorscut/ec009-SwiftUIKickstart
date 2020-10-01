//
//  Utilities.swift
//  Symbols
//
//  Created by Daniel Steinberg on 9/30/20.
//

import Foundation

extension Array where Element: Hashable{
  var toSet: Set<Element> {
    Set(self)
  }
}

func root(of symbolNames: [String]) -> [String] {
  symbolNames
    .map{$0.split(separator: ".")}
    .compactMap(\.first)
    .map(String.init)
    .toSet
    .sorted()
}

func symbolNames(startingWith root: String) -> [String] {
  symbolNames
    .filter{symbolName in
      symbolName.starts(with: root)
    }
}
