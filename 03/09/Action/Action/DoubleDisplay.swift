//
//  DoubleDisplay.swift
//  Action
//
//  Created by Daniel Steinberg on 9/26/20.
//

import SwiftUI

struct DoubleDisplay {
  @Rounding(2) var value: Double = 5
}

extension DoubleDisplay: View {
  var body: some View {
    Text(value.description)
      .modifier(DisplayModifier())
  }
}

struct DoubleDisplay_Previews: PreviewProvider {
  static var previews: some View {
    DoubleDisplay(value: 5)
  }
}

