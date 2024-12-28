import SwiftUI

struct ContentView: View {
  @State var model = Model()
}

extension ContentView {
  var body: some View {
    VStack(spacing: 30) {
      IntDisplay(model: model)
      HStack(spacing: 20) {
        DecreaseButton(model: model)
        IncreaseButton(model: model)
      }
    }
  }
}


#Preview {
  ContentView()
}
