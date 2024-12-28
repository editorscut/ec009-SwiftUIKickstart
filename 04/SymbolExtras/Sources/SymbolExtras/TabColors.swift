import SwiftUI

public let symbolTabColors: [Color] = [.primary, .blue, .green,
                                .secondary, .red, .purple, .yellow]

extension Color: @retroactive Identifiable {
  public var id: Int {
    self.hashValue
  }
}
