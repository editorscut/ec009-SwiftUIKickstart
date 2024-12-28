import Foundation

public let roots
  = root(of: symbolNames)
  .map(Node.init)

public struct Node: Identifiable, Sendable, Hashable {
  public let id = UUID()
  public let name: String
  public let childNodes: [Node]?
  
  public init(name: String) {
    self.name = name
    
    if name.hasNoChildren {
      childNodes = nil
    } else {
      childNodes
        = subNodeNames(for: name)
        .map{nextNode in
          Node(name: "\(name).\(nextNode)")
        }
    }
  }
}
