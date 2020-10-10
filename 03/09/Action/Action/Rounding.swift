@propertyWrapper

struct Rounding {
  private var value: Double = 0
  private let multipliers = [1.0, 10, 100, 1000, 10000]
  private var multiplier: Double = 10
  
  var wrappedValue: Double {
    get {
      value
    }
    set {
      value = (newValue * multiplier).rounded() / multiplier
    }
  }
  

  init(wrappedValue initialValue: Double,
       _ precision: Int = 1) {
      guard multipliers.indices.contains(precision) else {
          fatalError("Rounding is only supported for precision 0 - \(multipliers.count - 1)")
      }
      multiplier = multipliers[precision]
      self.wrappedValue = initialValue
  }
}
