import Foundation

let roots
  = root(of: symbolNames)
  .map(Node.init)

struct Node: Identifiable {
  let id = UUID()
  let name: String
}

