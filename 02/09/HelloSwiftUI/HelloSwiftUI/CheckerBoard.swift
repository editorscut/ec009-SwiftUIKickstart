import SwiftUI

struct CheckerBoard<A, B> where A: View, B: View {
  let firstView: A
  let secondView: B
}

extension CheckerBoard: View {
  var body: some View {
    VStack {
      HStack {
        firstView
          .frame(minWidth: 0,
                 maxWidth: .infinity)
        secondView
          .frame(minWidth: 0,
                 maxWidth: .infinity)
      }
      HStack {
        secondView
          .frame(minWidth: 0,
                 maxWidth: .infinity)
        firstView
          .frame(minWidth: 0,
                 maxWidth: .infinity)
      }
    }
  }
}

extension CheckerBoard {
  init(@CheckerBoardBuilder builder: () -> (A, B)) {
    (firstView, secondView) = builder()
  }
}

@_functionBuilder
struct CheckerBoardBuilder {
  static func buildBlock<A: View,
                         B: View>(_ firstView: A,
                                  _ secondView: B) -> (A, B) {
    (firstView, secondView)
  }
}

struct CheckerBoard_Previews: PreviewProvider {
  static var previews: some View {
    CheckerBoard(firstView: Text("Fun"),
                 secondView: Rectangle())
      .previewLayout(.sizeThatFits)
  }
}
