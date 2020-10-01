//
//  ContentView.swift
//  Symbols
//
//  Created by Daniel Steinberg on 9/27/20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    List(roots,
         children: \.childNodes){root in
        Text(root.name)
      }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

