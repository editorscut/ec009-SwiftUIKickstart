import Foundation

private let formatter: NumberFormatter = {
  let f = NumberFormatter()
  f.numberStyle = .spellOut
  return f
}()

extension Int {
  var spelledOut: String {
    formatter.string(for: self) ?? ""
  }
}
