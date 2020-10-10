import Foundation

class CurrentViewSupport: ObservableObject {
  @Published var rating: String = ""
  private let minRating = 0
  private let maxRating = 100
}

extension CurrentViewSupport {
  var inputIsNotValid: Bool {
    guard let int = Int(rating) else {return true}
    return int < minRating || int > maxRating
  }
  
  var textInputWarning: String {
    "Enter an Int between 0 and 100"
  }
  
  var warningShouldBeVisible: Bool {
    inputIsNotValid && !rating.isEmpty
  }
  
  var prompt: String {
    "Range \(minRating)-\(maxRating)"
  }
}
