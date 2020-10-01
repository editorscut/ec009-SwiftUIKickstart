//
//  DisplayModifier.swift
//  Action
//
//  Created by Daniel Steinberg on 9/24/20.
//

import SwiftUI

struct DisplayModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(.secondary)
      .padding()
  }
}

