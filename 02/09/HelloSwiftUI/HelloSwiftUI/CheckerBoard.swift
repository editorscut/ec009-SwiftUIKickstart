import SwiftUI

struct CheckerBoard<FirstView: View,
                    SecondView: View>: View {
  let firstView: FirstView
  let secondView: SecondView
  
  var body: some View {
    VStack {
      HStack {
        firstView
          .frame(//minWidth: 0,
                 maxWidth: .infinity)
//          .aspectRatio(1,
//                       contentMode: .fit)
        secondView
          .frame(//minWidth: 0,
                 maxWidth: .infinity)
//          .aspectRatio(1,
//                       contentMode: .fit)
      }
      HStack {
        secondView
          .frame(//minWidth: 0,
                 maxWidth: .infinity)
//          .aspectRatio(1,
//                       contentMode: .fit)
        firstView
          .frame(//minWidth: 0,
                 maxWidth: .infinity)
//          .aspectRatio(1,
//                       contentMode: .fit)
      }
    }
    .border(.primary, width: 4)
  }
}

extension CheckerBoard {
  init(@CheckerBoardBuilder builder: () -> (FirstView, SecondView)) {
    (firstView, secondView) = builder()
  }
}

@resultBuilder
struct CheckerBoardBuilder {
  static func buildBlock<A: View>(_ firstView: A) -> (A, Rectangle) {
    (firstView, Rectangle())
  }
  
  static func buildBlock<A: View,
                          B: View>(_ firstView: A,
                                   _ secondView: B) -> (A, B) {
    (firstView, secondView)
  }
}

#Preview {
  CheckerBoard {
    Text("Kickstart")
    Image("Cover")
  }
}
