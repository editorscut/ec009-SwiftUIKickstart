//
//  DisclosedGrid.swift
//  Symbols
//
//  Created by Daniel Steinberg on 10/1/20.
//

import SwiftUI

struct DisclosedGrid {
  let disclosedSymbols: [String]
}

extension DisclosedGrid: View {
  var body: some View {
    ScrollView(.horizontal) {
      LazyHGrid(rows: [GridItem(.flexible())]) {
        ForEach(disclosedSymbols, id: \.self) {symbol in
          Image(systemName: symbol)
        }
      }
    }
  }
}

struct DisclosedGrid_Previews: PreviewProvider {
  static var previews: some View {
    DisclosedGrid(disclosedSymbols: symbolNames)
  }
}
