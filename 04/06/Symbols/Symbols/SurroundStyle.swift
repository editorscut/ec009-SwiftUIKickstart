//
//  SurroundStyle.swift
//  Symbols
//
//  Created by Daniel Steinberg on 9/28/20.
//

import SwiftUI

struct SurroundStyle: LabelStyle {
  func makeBody(configuration: Configuration) -> some View {
    VStack {
      HStack(spacing: 20) {
        configuration.icon
          .foregroundColor(.purple)
        configuration.icon
          .scaleEffect(2.0)
        configuration.icon
          .foregroundColor(.orange)
      }
      configuration.title
        .font(.headline)
        .padding()
    }
  }
}
