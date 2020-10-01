//
//  DesignerSlider.swift
//  Action
//
//  Created by Daniel Steinberg on 9/25/20.
//

import SwiftUI

struct DesignerSlider {
  let min: CGFloat
  let max: CGFloat
  @Binding var value: CGFloat
}

extension DesignerSlider: View {
  var body: some View {
    VStack {
      Text(value.description)
      Slider(value: $value,
             in: min...max)
      
    }
    .padding()
  }
}

struct DesignerSlider_Previews: PreviewProvider {
  static var previews: some View {
    DesignerSlider(min: 0,
                   max: 10,
                   value: .constant(5))
      .previewLayout(.sizeThatFits)
  }
}
