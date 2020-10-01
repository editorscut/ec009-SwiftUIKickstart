//
//  ContentView.swift
//  Action
//
//  Created by Daniel Steinberg on 9/22/20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Hello")
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
    print("Back")
  }
  private func forward() {
    print("Forward")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}
