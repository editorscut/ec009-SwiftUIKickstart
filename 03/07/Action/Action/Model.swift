import Combine

class Model: ObservableObject {
  @Published private(set) var value = 0
}

extension Model {
  func increase() {
    value += 1
  }
  func decrease() {
    value -= 1
  }
}
