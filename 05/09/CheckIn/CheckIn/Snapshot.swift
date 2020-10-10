import Foundation

struct Snapshot: Identifiable {
  let rating: Int
  let date = Date()
  let id = UUID()
}
