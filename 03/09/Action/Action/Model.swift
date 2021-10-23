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
