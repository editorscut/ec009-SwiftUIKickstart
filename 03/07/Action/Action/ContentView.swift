//
//  ContentView.swift
//  Action
//
//  Created by Daniel Steinberg on 9/22/20.
//

import SwiftUI

let increments = [1, 2, 3, 5, 10]

struct ContentView {
  @State private var currentValue = 0
  @State private var incrementIndex = 0
}

extension ContentView: View {
  var body: some View {
    VStack {
      IntDisplay(value: currentValue)
      HStack(spacing: 42) {
        SymbolButton("arrow.left",
                     action: back)
        SymbolButton("arrow.right",
                     action: forward)
      }
      ArrayPicker(array: increments,
                  index: $incrementIndex)
    }
  }
}

extension ContentView {
  private func back() {
    currentValue -= increments[incrementIndex]
  }
  private func forward() {
    currentValue += increments[incrementIndex]
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}
