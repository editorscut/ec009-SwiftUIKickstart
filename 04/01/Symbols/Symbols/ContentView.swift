//
//  ContentView.swift
//  Symbols
//
//  Created by Daniel Steinberg on 9/27/20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    SystemLabel(name: symbolNames[104])
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

