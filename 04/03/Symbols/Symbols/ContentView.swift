//
//  ContentView.swift
//  Symbols
//
//  Created by Daniel Steinberg on 9/27/20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ScrollView {
      LazyVStack(spacing: 20) {
        ForEach(symbols){symbol in
          SystemLabel(name: symbol.name)
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

