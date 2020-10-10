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
      Spacer()
      Circle()
    }
    .foregroundColor(.black)
    .background(Color.red.opacity(0.3))
  }
}

struct Eyes_Previews: PreviewProvider {
  static var previews: some View {
    Eyes()
  }
}
