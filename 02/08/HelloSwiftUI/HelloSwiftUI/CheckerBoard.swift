import SwiftUI

struct CheckerBoard {
  let firstView: Text
  let secondView: some View = Rectangle()
}

extension CheckerBoard: View {
  var body: some View {
    VStack {
      HStack {
        firstView
          .frame(minWidth: 0,
                 maxWidth: .infinity)
        secondView
      }
      HStack {
        secondView
        firstView
          .frame(minWidth: 0,
                 maxWidth: .infinity)
      }
    }
  }
}

extension CheckerBoard {
  init(@CheckerBoardBuilder builder: () -> Text) {
    firstView = builder()
  }
}

@_functionBuilder
struct CheckerBoardBuilder {
  static func buildBlock(_ text: Text) -> Text {
    text
  }
}

struct CheckerBoard_Previews: PreviewProvider {
  static var previews: some View {
    CheckerBoard(firstView: Text("Fun"))
      .previewLayout(.sizeThatFits)
  }
}
