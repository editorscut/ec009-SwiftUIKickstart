//
//  Model.swift
//  Action
//
//  Created by Daniel Steinberg on 9/25/20.
//

struct Model {
  let value: Int
}

extension Model {
  var decrease: Model {
    Model(value: value - 1)
  }
  var increase: Model {
    Model(value: value + 1)
  }
}
