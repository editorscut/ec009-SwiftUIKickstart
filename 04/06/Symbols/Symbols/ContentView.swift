//
//  ContentView.swift
//  Symbols
//
//  Created by Daniel Steinberg on 9/27/20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    List {
      ForEach(roots){root in
        DisclosureGroup {
          DisclosedGrid(disclosedSymbols: symbolNames(startingWith: root.name))
        } label: {
          Text(root.name)
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

