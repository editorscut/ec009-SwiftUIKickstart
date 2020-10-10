import SwiftUI

struct CheckerBoard<A, B> where A: View, B: View {
  let firstView: A
  let secondView: B
  let stackColor: Color
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
    .background(stackColor)
  }
}

extension CheckerBoard {
  init(backgroundColor: Color = .white, @CheckerBoardBuilder builder: () -> (A, B)) {
    stackColor = backgroundColor
    (firstView, secondView) = builder()
  }
}

extension CheckerBoard where B == Rectangle {
  init(backgroundColor: Color = .white,
       @CheckerBoardBuilder builder: () -> (A)) {
    stackColor = backgroundColor
    firstView = builder()
    secondView = Rectangle()
  }
}

@_functionBuilder
struct CheckerBoardBuilder {
  static func buildBlock<A: View>(_ firstView: A) -> A {
    firstView
  }
  static func buildBlock<A: View,
                         B: View>(_ firstView: A,
                                  _ secondView: B) -> (A, B) {
    (firstView, secondView)
  }
}

struct CheckerBoard_Previews: PreviewProvider {
  static var previews: some View {
    CheckerBoard(firstView: Text("Fun"),
                 secondView: Rectangle(),
                 stackColor: .white)
      .previewLayout(.sizeThatFits)
  }
}
