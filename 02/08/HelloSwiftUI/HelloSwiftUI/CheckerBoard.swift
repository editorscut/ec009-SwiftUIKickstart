import SwiftUI

struct CheckerBoard: View {
  let firstView: Text
  let secondView = Rectangle()
  
  var body: some View {
    let first = firstView
      .frame(maxWidth: .infinity)
      .aspectRatio(1, contentMode: .fit)
    let second = secondView
      .frame(maxWidth: .infinity)
      .aspectRatio(1, contentMode: .fit)
    
    VStack {
      HStack {
        first
        second
      }
      HStack {
        second
        first
      }
    }
    .border(.primary, width: 4)
  }
}

extension CheckerBoard {
  init(@CheckerBoardBuilder builder: () -> Text) {
    firstView = builder()
  }
}

@resultBuilder
struct CheckerBoardBuilder {
  static func buildBlock(_ text: Text) -> Text {
    text
  }
}

#Preview {
  CheckerBoard {
    Text("Kickstart")
  }
}
