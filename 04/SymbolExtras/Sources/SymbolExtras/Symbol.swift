import Foundation

public let symbols = symbolNames.map(Symbol.init)

public struct Symbol: Identifiable, Hashable, Sendable {
  public let name: String
  public let id = UUID()
}
