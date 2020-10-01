//
//  ContentViewSupport.swift
//  Action
//
//  Created by Daniel Steinberg on 9/25/20.
//

import SwiftUI

class ContentViewSupport: ObservableObject {
  @Published private var model = Model(value: 0)
}

extension ContentViewSupport {
  var currentValue: Int {
    model.value
  }
  func back() {
    model = model.decrease
  }
  func forward() {
    model = model.increase
  }
}
