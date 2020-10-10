import Foundation

extension Array where Element: Hashable{
  var toSet: Set<Element> {
    Set(self)
  }
}

extension String {
  var hasNoChildren: Bool {
    symbolNames(startingWith: self)
      .difference(from: [self])
      .isEmpty
  }
}

func root(of symbolNames: [String]) -> [String] {
  symbolNames
    .map{$0.split(separator: ".")}
    .compactMap(\.first)
    .map(String.init)
    .toSet
    .sorted()
}

func subNodeNames(for name: String) -> [String] {
  let names = symbolNames(startingWith: name)
    .map{childName in
      childName.dropFirst(name.count + 1)
    }
    .map(String.init)
  return root(of: names)
}


func symbolNames(startingWith root: String) -> [String] {
  symbolNames
    .filter{symbolName in
      symbolName.starts(with: root)
    }
}
