import Foundation

class CurrentViewSupport: ObservableObject {
  @Published var rating: String = ""
  private let minRating = 0
  private let maxRating = 100
}

extension CurrentViewSupport {
  var prompt: String {
    "Range \(minRating)-\(maxRating)"
  }
  
  func action() {
    print(rating)
    rating = ""
  }
}
