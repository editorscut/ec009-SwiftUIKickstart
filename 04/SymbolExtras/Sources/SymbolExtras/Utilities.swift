import Foundation

extension Array where Element: Hashable{
  public var toSet: Set<Element> {
    Set(self)
  }
}

extension String {
  public var hasNoChildren: Bool {
    symbolNames(startingWith: self)
      .difference(from: [self])
      .isEmpty
  }
}

public func root(of symbolNames: [String]) -> [String] {
  symbolNames
    .map{$0.split(separator: ".")}
    .compactMap(\.first)
    .map(String.init)
    .toSet
    .sorted()
}

public func subNodeNames(for name: String) -> [String] {
  let names = symbolNames(startingWith: name)
    .map{childName in
      childName.dropFirst(name.count + 1)
    }
    .map(String.init)
  return root(of: names)
}


fileprivate func symbolNames(startingWith root: String) -> [String] {
  symbolNames
    .filter{symbolName in
      symbolName.starts(with: root)
    }
}

public func symbols(withRoot root: Node) -> [Symbol] {
  symbols
    .filter{symbol in
      symbol.name.starts(with: root.name)
    }
}
