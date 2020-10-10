//
//  Eyes.swift
//  Mood
//
//  Created by Daniel Steinberg on 10/8/20.
//

import SwiftUI

struct Eyes {
}

extension Eyes: View {
  var body: some View {
    HStack {
      Circle()
        .scale(0.33)
      Spacer()
      Circle()
        .scale(0.33)
    }
    .foregroundColor(.black)
    .scaleEffect(0.75)
    .offset(x: 0,
            y: -40)
  }
}

struct Eyes_Previews: PreviewProvider {
  static var previews: some View {
    Eyes()
  }
}
