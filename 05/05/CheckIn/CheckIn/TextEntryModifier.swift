//
//  TextEntryModifier.swift
//  CheckIn
//
//  Created by Daniel Steinberg on 10/5/20.
//

import SwiftUI

struct TextEntryModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .textFieldStyle(RoundedBorderTextFieldStyle())
      .multilineTextAlignment(.center)
      .padding(.horizontal)
  }
}
