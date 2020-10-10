import Foundation

let symbols = symbolNames.map(Symbol.init)

struct Symbol: Identifiable {
  let name: String
  let id = UUID()
}
