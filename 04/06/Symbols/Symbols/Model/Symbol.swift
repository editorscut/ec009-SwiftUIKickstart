import Foundation

let symbols = symbolNames.map(Symbol.init)

struct Symbol: Identifiable, Hashable {
  let name: String
  let id = UUID()
}
