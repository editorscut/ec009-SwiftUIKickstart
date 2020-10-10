//
//  SwiftyMoji.swift
//  Mood
//
//  Created by Daniel Steinberg on 10/8/20.
//

import SwiftUI

struct SwiftyMoji {
  let value: Double
}

extension SwiftyMoji: View {
  var body: some View {
    Circle()
      .foregroundColor(color)
  }
}

extension SwiftyMoji {
  var color: Color {
    Color(red: (100 - value)/50,
          green: value/50,
          blue: 0)
  }
}

struct SwiftyMoji_Previews: PreviewProvider {
  static var previews: some View {
    SwiftyMoji(value: 60)
  }
}
