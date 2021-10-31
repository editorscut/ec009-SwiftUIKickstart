import Foundation

class CurrentViewSupport: ObservableObject {
  @Published var rating = ""
  let minimumRating = 0
  let maximumRating = 100
}

extension CurrentViewSupport {
  func clearRating() {
    rating = ""
  }
  var prompt: String {
    "Range \(minimumRating) - \(maximumRating)"
  }
}
