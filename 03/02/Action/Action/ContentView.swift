//
//  ContentView.swift
//  Action
//
//  Created by Daniel Steinberg on 9/22/20.
//

import SwiftUI

struct ContentView {
  @State private var currentValue = 0
}

extension ContentView: View {
  var body: some View {
    VStack {
      Text(currentValue.description)
        .padding()
      HStack {
        Button(action: back) {
          Image(systemName: "arrow.left")
        }
        .padding()
        Button(action: forward) {
          Image(systemName: "arrow.right")
        }
        .padding()
      }
    }
  }
}

extension ContentView {
  private func back() {
    currentValue -= 1
  }
  private func forward() {
    currentValue += 1
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}
