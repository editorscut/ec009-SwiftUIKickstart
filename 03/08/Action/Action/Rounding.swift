@propertyWrapper
struct Rounding {
  private var value: Double = 0
  private var multiplier = 10.0
  private let multipliers = [1.0, 10, 100, 1_000, 10_000, 100_000]
  
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
      fatalError("Rounding only supported for 0 to \(multipliers.count - 1) places.")
    }
    multiplier = multipliers[precision]
    self.wrappedValue = initialValue
  }
}
