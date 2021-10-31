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
    "\(minimumRating) - \(maximumRating)"
  }
  
  var inputIsNotValid: Bool {
    guard let int = Int(rating) else {return true}
    return int < minimumRating || int > maximumRating
  }
  
  var inputIsValid: Bool {
    !inputIsNotValid
  }
  
  var textInputWarning: String {
    "Enter an Int between " + prompt
  }
  
  var warningNotDisplayed: Bool {
    rating.isEmpty || inputIsValid
  }
}
