import Combine

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
